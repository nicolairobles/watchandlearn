val = [-1,0,1]

FactoryGirl.define do
  factory :vote do
    value { val.sample }
    user_id { rand(1..10) }
    video_id { rand(1..40) }
    curriculum_id { rand(1..10) }
  end
end
