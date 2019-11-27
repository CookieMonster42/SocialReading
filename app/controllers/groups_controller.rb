class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
    @comment = Comment.new
    # for now ok but later make no external see the group
    skip_authorization
  end

  def index
    skip_policy_scope
    @location = params[:query]
    # search_groups(@location)
    @groups = Group.near(@location, 50)
    if @groups.any?
      @groups = Group.near(@location, 50)
    else
      @groups = Group.all
    end
  end

  private

  def search_groups(location)
    if params[:query].present?
      # if params[:range].values.first.to_i.zero?
      #   range = 50
      # else
      #   range = params[:range].values.first.to_i
      # end
      @groups = Group.near(" #{location}", 50)
    end
  end
end
