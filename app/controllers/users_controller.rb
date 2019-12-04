class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @memberships = @user.memberships.includes(:group).order("groups.date asc")
    @groups = Group.all
    # @joined_groups = @user.groups
    @hosted_groups = @user.hosted_groups
    authorize @user
  end
end
