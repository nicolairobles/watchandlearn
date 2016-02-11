class Curriculum < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic
  has_many :videos
  has_many :subscriptions
  has_many :votes
end
