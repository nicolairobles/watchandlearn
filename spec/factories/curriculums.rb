FactoryGirl.define do
  factory :curriculum do
    title { Faker::Hacker.noun }
    description { Faker::Hipster.sentence }
    level { rand(1..3) }
    user_id { rand(1..10) }
    topic_id { rand(1..3) }
  end
end
