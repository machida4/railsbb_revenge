class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :topics

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 8 }
end
