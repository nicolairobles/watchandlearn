FactoryGirl.define do
  factory :user do
    fname { Faker::Name.first_name }
    lname { Faker::Name.last_name }
    email { Faker::Internet.email }
    password_digest "123456"
    image { Faker::Avatar.image }
  end
end
