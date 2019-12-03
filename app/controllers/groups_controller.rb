class GroupsController < ApplicationController
  def index
    skip_policy_scope
    search_groups(params)
  end

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

  def create
    @group = Group.new(group_params)
    @group.user_id = current_user.id
  end

  private

  def group_params
    params.require(:group).permit(:name, :date, :location, :language_id, :host_message, :max_members)
  end

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
