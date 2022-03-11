FactoryBot.define do
  factory :merchant do
    name { Faker::Name.name }
    email { Faker::Internet.unique.email }
    description { "A randome description" }
    status { "active" }
    trait :active do
      status { "active" }
    end

    trait :inactive do
      status { "inactive" }
    end
  end
end