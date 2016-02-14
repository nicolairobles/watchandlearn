val = [-1,0,1]

FactoryGirl.define do
  factory :vote do
    value { 1 }
    user_id { rand(1..10) }
    video_id { rand(4..40) }
    curriculum_id { rand(2..100) }
  end
end
