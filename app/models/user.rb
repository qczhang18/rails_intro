class User < ApplicationRecord
  has_many :tweets
  has_many :posts
  has_many :comments
end
