class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  has_many :curriculums
  has_many :votes
  has_many :subscriptions
  validates :fname,  presence: true
  validates :lname,  presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :pw_digest, presence: true, length: { minimum: 6 }
  validates :password_confirmation, :presence => true
  has_secure_password
end
