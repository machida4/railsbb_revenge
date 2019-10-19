class Topic < ApplicationRecord
  belongs_to :user
  has_many :posts
  before_create :set_last_posted_at_to_current_time
  include ImageUploader::Attachment(:image) # adds an `image` virtual attribute
  
  validates :title, presence: true
  validates :message, presence: true
  validates :image_data, presence: true
  
  private

  def set_last_posted_at_to_current_time
    self.last_posted_at = Time.current
  end
end