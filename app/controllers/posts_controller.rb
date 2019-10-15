class PostsController < ApplicationController
  def index
    @topic = Topic.find(params[:topic_id])
    @posts = @topic.posts
    @newpost = Post.new(topic_id: params[:topic_id])
  end

  def create
    post = Post.new(post_params)
    post[:user_id] = current_user.id
    if post.save!
      redirect_to topic_posts_path(post.topic), notice: '書き込みに成功しました'
    else
      flash[:alert] = "書き込みに失敗しました"
      redirect_to topic_posts_path(post.topic)
    end
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:topic_id, :message)
  end
end
