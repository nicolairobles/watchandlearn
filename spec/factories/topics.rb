a = ["Python", "Ruby", "Javascript"]

FactoryGirl.define do
  factory :topic do
    name {a.sample}
  end
end
