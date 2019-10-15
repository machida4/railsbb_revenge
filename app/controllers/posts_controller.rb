class PostsController < ApplicationController
  def index
    @topic = Topic.find(params[:topic_id])
    @posts = @topic.posts
  end

  def create
  end

  def destroy
  end
end
