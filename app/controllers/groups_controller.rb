class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
    @comment = Comment.new
    skip_authorization
  end

  def index
    @groups = Group.all
    skip_policy_scope
  end
end
