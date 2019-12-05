class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
    @comment = Comment.new
    # for now ok but later make no external see the group
    skip_authorization

    @markers =
      {
        lat: @group.latitude,
        lng: @group.longitude
      }
  end

  def new
    @group = Group.new
    respond_to do |format|
      # p "Hey here we are sending this when the ayax got called!!!"
      book_title = params.keys.first
      @book = Book.find_by(title: book_title)
      p @book
      format.js
      format.html { render :new }
    end
  end

  def create
    @group = Group.new(group_params)
    @group.user_id = current_user.id
    @group.book = Book.find_by(title: params[:book][:title])
    @group.language = Language.find_by(name: params[:language][:name])
    @group.tag_list.add(params[:group][:tags])
    if @group.save!
      flash[:notice] = "You have successfully created the group: #{@group.name}!"
      redirect_to group_path(@group)
    else
      render "new"
    end
  end

  def index
    @languages = Language.all
    @tags_all = ActsAsTaggableOn::Tag.all.map { |instance| instance.name }
    skip_policy_scope
    search_groups(params)
    # raise
  end

  private

  def group_params
    params.require(:group).permit(:name, :date, :location, :language_id, :host_message, :max_members)
  end

  def search_groups(params)
    # raise
    @tags_all = ActsAsTaggableOn::Tag.all.map { |tag| tag.name }
    @languages_all = Language.all.map { |language| language.id }
    @range = ""
    @languages = []
    @location = params[:query]

    if @range.present?
      @range = params[:range] || 50 if params[:range].empty?
    else
      # params[:range] = 50
      @range = 50
    end

    if params[:language].present?
      @languages = params[:language].empty? ? @languages_all : params[:language]
    else
      # params[:language] = @languages_all
      @languages = @languages_all
    end

    if params[:tags].present?
      @tags_given = params[:tags].empty? ? @tags_all : params[:tags]
    else
      @tags_given = @tags_all
      # params[:tags] = @tags_given.first
    end
    if @location.present?
      # if more tags than one are given the any should be all in line 28
      @groups = Group.near(@location, @range).where(language_id: @languages).tagged_with(@tags_given, any: true)
    else
      @groups = Group.where(language_id: @languages).tagged_with(@tags_given, any: true)
    end
    # @groups = filter_outdated_books(@groups)
    # raise
  end

  # def filter_outdated_books(groups)
  #   groups.map { |g| g if g.date >= Date.today }
  # end
end
