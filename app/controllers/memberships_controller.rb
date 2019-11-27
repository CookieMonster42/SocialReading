class MembershipsController < ApplicationController

  def create
    group_id = params[:id]
    user_id = current_user.id
    @membership = Membership.create(group_id: group_id, user_id: user_id)
    redirect_to group_path(group_id)
  end

end
