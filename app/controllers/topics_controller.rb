class TopicsController < ApplicationController  
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    topic = Topic.new(topic_params)
    topic[:user_id] = current_user.id
    if topic.save!
      redirected_to topics_path(topic), notice: 'トピックが作成されました'
    else
      flash[:alert] = "トピックの作成に失敗しました"
      redirected_to topics_path
    end
  end

  def destroy
  end

  private

  def topic_params
    params.require(:topic).permit(:title, :image)
  end

end
