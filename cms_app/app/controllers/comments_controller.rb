class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to posts_path, notice: 'Comment added successfully.'
    else
      redirect_to posts_path, alert: 'Unable to add comment.'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to posts_path, notice: 'Comment deleted successfully.'
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
