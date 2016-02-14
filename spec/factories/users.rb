FactoryGirl.define do
  factory :user do
    fname { Faker::Name.first_name }
    lname { Faker::Name.last_name }
    email { Faker::Internet.email }
    password "123456" 
    password_confirmation "123456"
    image { Faker::Avatar.image }
  end
end
