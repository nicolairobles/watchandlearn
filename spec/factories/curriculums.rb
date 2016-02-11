FactoryGirl.define do
  factory :curriculum do
    title { Faker::Hacker.noun }
    description { Faker::Hipster.sentence }
    level { rand(1..3) }
    user { rand(1..10) }
    topic { rand(1..10) }
  end
end
