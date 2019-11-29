class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
    @comment = Comment.new
    # for now ok but later make no external see the group
    skip_authorization
  end

  def index
    skip_policy_scope
    search_groups(params)
  end

  private

  def search_groups(params)
    searched = false
    if params[:query]
      @location = params[:query]
      searched = true
      @groups = Group.near(@location, 50)
    elsif params[:format]
      @location = params[:format]
      searched = true
      @groups = Group.near(@location, 50)
    else
      @groups = Group.all
    end
    if @groups.any? && searched
      @groups = Group.near(@location, 50)
    else
      @groups = Group.all
    end
  end
end
