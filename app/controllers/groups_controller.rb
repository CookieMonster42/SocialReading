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
  end

  def create
    @group = Group.new(group_params)
    @group.user_id = current_user.id
    if @group.save
      redirect_to groups_path
    else
      render "new"
    end
  end

  def index
    @languages = Language.all
    @tags_all = ActsAsTaggableOn::Tag.all.map { |instance| instance.name }
    skip_policy_scope
    search_groups(params)
    raise
  end

  private

  def group_params
    params.require(:group).permit(:name, :date, :location, :language_id, :host_message, :max_members)
  end

  def search_groups(params)
    @tags_all = ActsAsTaggableOn::Tag.all.map { |instance| instance.name }
    @location = params[:query]
    if @range.nil?
      @range = ""
      @range = params[:range].present? ? params[:range] : 50
    else
      @range = params[:range].empty? ? 50 : params[:range]
    end
    # @range = 50 if @range.empty?
    @language = params[:language]
    @language = Language.first.id if @language.nil? || @language.empty?
    if params[:tags].nil?
      @tags_given = params[:tags].present? ? @tags_all : params[:tags]
    else
      @tags_given = params[:tags].empty? ? @tags_all : params[:tags]
    end

    if !@location.nil?
      # if more tags than one are given the any should be all in line 28
      @groups = Group.near(@location, @range).where(language_id: @language).tagged_with(@tags_given, any: true)
    elsif @location.nil?
      @groups = Group.where(language_id: @language).tagged_with(@tags_given, any: true)
    else
      @groups = Group.all
    end
  end
end
