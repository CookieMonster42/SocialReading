class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @memberships = @user.memberships.includes(:group).order("groups.date asc")
    authorize @user
  end
end
