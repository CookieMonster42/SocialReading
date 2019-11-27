class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
    @comment = Comment.new
    # for now ok but later make no external see the group
    skip_authorization
  end

  def index
    @groups = Group.all
    skip_policy_scope
    @location = params[:format]
    search_groups(@location)
  end

  private

  def search_groups(location)
    if params[:query].present?
      if params[:range].values.first.to_i.zero?
        range = 50
      else
        range = params[:range].values.first.to_i
      end
      @groups = Group.near(" #{params[:query]}", 50)
      redirect_to groups_path
    end
  end
end
