class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    # Check if the current user has already liked the post
    if @post.likes.exists?(user_id: current_user.id)
      redirect_to posts_path, alert: 'You have already liked this post.'
    else
      @like = @post.likes.new(user: current_user)

      if @like.save
        redirect_to posts_path, notice: 'Post liked successfully.'
      else
        redirect_to posts_path, alert: 'Unable to like post.'
      end
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to posts_path, notice: 'Post unliked successfully.'
  end
end
