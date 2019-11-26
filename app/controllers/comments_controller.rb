class CommentsController < ApplicationController
  # def show
  #   @comment = Comment.find(params[:id])
  # end

  # def new
  #   @group = Group.find(params[:group_id])
  #   @comment = Comment.new
  # end

  def create
    @group = Group.find(params[:group_id])
    @comment = Comment.new(comment_params)
    @comment.group = @group
    @comment.user = current_user

    if @comment.save!
      respond_to do |format|
        format.html { redirect_to group_path(@group) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'groups/show' }
        format.js
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
