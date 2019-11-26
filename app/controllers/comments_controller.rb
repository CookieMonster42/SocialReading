class CommentsController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @comment = Comment.new(comment_params)
    @comment.group = @comment
    if @comment.save
      redirect_to group_path(@group)
    else
      render "???"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
