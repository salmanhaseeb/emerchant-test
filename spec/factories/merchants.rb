# frozen_string_literal: true

FactoryBot.define do
  factory :merchant do
    name { Faker::Name.name }
    email { Faker::Internet.unique.email }
    description { 'A randome description' }
    password { '123123' }
    status { 'active' }
    trait :active do
      status { 'active' }
    end

    trait :inactive do
      status { 'inactive' }
    end
  end
end
