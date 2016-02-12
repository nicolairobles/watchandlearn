# require 'bcrypt'
class User < ActiveRecord::Base
  # include BCrypt

  # def password
  #   @password ||= Password.new(password_hash)
  # end

  # def password=(new_password)
  #   @password = Password.create(new_password)
  #   self.password_hash = @password
  # end
  has_secure_password
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
  validates :password_digest, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  

end
