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

  def index
    @languages = Language.all
    @tags_all = ActsAsTaggableOn::Tag.all.map { |instance| instance.name }
    skip_policy_scope
    search_groups(params)
  end

  private

  def search_groups(params)
    @tags_all = ActsAsTaggableOn::Tag.all.map { |instance| instance.name }
    @location = params[:query]
    @range = params[:range].empty? ? 50 : params[:range]
    # @range = 50 if @range.empty?
    @language = params[:language]
    @language = Language.first.id if @language.nil? || @language.empty?
    @tags_given = params[:tags].empty? ? @tags_all : params[:tags]

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
