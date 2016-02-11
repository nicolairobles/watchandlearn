FactoryGirl.define do
  factory :subscription do
    user rand(1..10)
    curriculum rand(1..10)
  end
end
