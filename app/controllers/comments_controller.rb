class CommentsController < ApplicationController

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @group = Group.find(params[:group_id])
    @comment = Comment.new
  end

  def create
    @group = Group.find(params[:group_id])
    @comment = Comment.new(comment_params)
    @comment.group = @group
    @comment.user = current_user

    if @comment.save!
      redirect_to group_comment_path(@group, @comment.reload)
    else
      render :new
    end
    # if/else statement
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
