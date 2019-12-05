class MembershipsController < ApplicationController
  def create
    group_id = params[:id]
    user_id = current_user.id
    @membership = Membership.create(group_id: group_id, user_id: user_id)
    @group = Group.find(group_id).name
    flash[:notice] = "You have successfully joined the group: #{@group}!"
    redirect_to group_path(group_id)
  end

  def destroy
    group_id = params[:id]
    @group = Group.find(group_id).name
    user_id = current_user.id
    @membership = Membership.find_by(group_id: group_id, user_id: user_id)
    @membership.delete
    flash[:notice] = "You have left the group: #{@group}!"
    redirect_to group_path(group_id)
  end
end
