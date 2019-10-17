class Post < ApplicationRecord
  after_save :set_last_posted_at_of_topic_to_current_time

  belongs_to :user
  belongs_to :topic

  private

  def set_last_posted_at_of_topic_to_current_time
    self.topic.last_posted_at = Time.current
    self.topic.save!
  end
end
