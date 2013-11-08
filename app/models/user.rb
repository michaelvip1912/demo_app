class User < ActiveRecord::Base
  has_many :microposts
  #attr_accessor  :name ,:email
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true , format: { with: VALID_EMAIL_REGEX }
  before_save { self.email = email.downcase }
end
