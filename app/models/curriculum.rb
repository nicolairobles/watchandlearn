class Curriculum < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic
  has_many :videos, dependent: :destroy
  has_many :subscriptions
  has_many :votes
end
