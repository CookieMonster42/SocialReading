class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @memberships = Membership.where(user_id: @user.id)
    authorize @user
  end
end
