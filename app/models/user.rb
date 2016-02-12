class User < ActiveRecord::Base
  has_many :curriculums
  has_many :votes
  has_many :subscriptions
  has_secure_password
end
