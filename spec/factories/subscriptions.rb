FactoryGirl.define do
  factory :subscription do
    user_id { rand(1..10) }
    curriculum_id { rand(1..10) }
  end
end
