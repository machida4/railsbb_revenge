class TopicsController < ApplicationController  
  def index
    @ordered_topics = Topic.all.order(last_posted_at: "DESC").page(params[:page])
  end

  def new
    @topic = Topic.new
  end

  def create
    topic = Topic.new(topic_params)
    topic[:user_id] = current_user.id
    if topic.save
      flash[:notice] =  ["トピック作成に成功しました"]
      redirect_to topics_path(topic)
    else
      redirect_to new_topic_path, alert: topic.errors.full_messages
    end
  end

  def destroy
  end

  private

  def topic_params
    params.require(:topic).permit(:title, :message, :image)
  end

end
