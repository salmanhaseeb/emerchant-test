# frozen_string_literal: true

FactoryBot.define do
  factory :admin do
    email { Faker::Internet.unique.email }
    password { '123123' }
  end
end
