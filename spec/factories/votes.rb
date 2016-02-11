val = [-1,0,1]

FactoryGirl.define do
  factory :vote do
    value {val.sample}
    user rand(1..10)
    video rand(1..40)
    curriculum (1..10)
  end
end
