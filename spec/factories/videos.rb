a = (1..100).to_a.shuffle

FactoryGirl.define do
  factory :video do
    urlID { Faker::Avatar.image }
    thumbnail { Faker::Avatar.image }
    position { a.pop }
    description { Faker::Hipster.sentence }
    title { Faker::Hipster.sentence }
    curriculum_id { rand(2..10) }
  end
end
