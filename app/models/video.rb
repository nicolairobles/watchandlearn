class Video < ActiveRecord::Base
  belongs_to :curriculum
  has_many :votes
end
