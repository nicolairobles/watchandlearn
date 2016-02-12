class User < ActiveRecord::Base

  has_secure_password
  has_many :curriculums
  has_many :votes
  has_many :subscriptions

  before_save { self.email = email.downcase }

  validates :fname,  presence: true
  validates :lname,  presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password_digest, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  

end
