class GroupsController < ApplicationController

  def show
    @group = Group.find(params[:id])
    @comment = Comment.new
  end

end
