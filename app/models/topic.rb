class Topic < ApplicationRecord
  before_create :set_last_posted_at_to_current_time
  
  include ImageUploader::Attachment(:image) # adds an `image` virtual attribute
  belongs_to :user
  has_many :posts

  private

  def set_last_posted_at_to_current_time
    self.last_posted_at = Time.current
  end
end