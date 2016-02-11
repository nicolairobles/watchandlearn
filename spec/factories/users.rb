FactoryGirl.define do
  factory :user do
    fname { Faker::Name.first_name }
    lname { Faker::Name.last_name }
    email { Faker::Internet.email }
    pw_digest "12345"
    image { Faker::Avatar.image }
  end
end
