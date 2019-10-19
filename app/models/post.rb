class Post < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  after_save :set_last_posted_at_of_topic_to_current_time

  validates :message, presence: true

  private

  def set_last_posted_at_of_topic_to_current_time
    self.topic.last_posted_at = Time.current
    self.topic.save!
  end
end
