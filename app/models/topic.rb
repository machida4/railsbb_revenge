class Topic < ApplicationRecord
  include ImageUploader::Attachment(:image) # adds an `image` virtual attribute
  belongs_to :user
  has_many :posts
end
