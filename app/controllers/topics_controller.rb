class TopicsController < ApplicationController  
  def index
    @topics = Topic.all
  end

  def new
  end

  def create
  end

  def destroy
  end
end
