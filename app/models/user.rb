class User < ApplicationRecord
  has_many :tweets
  has_many :posts
  has_many :comments


  #u.save
  #u.errors
  #u.save!
  #u.save(:validate => false)
  validates :fname, presence: true
  validates_presence_of :email
  validates :email, uniqueness: true

  scope :today, -> {where("DATE(created_at)=?", Date.today)}
  scope :admin, -> {where(email: 'qzhang@gmail.com')}

end
