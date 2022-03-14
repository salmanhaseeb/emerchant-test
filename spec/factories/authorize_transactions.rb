FactoryBot.define do
  factory :authorize_transaction do
    amount { Faker::Number.number(digits: 5) }
    customer_email { Faker::Internet.email }
    customer_phone { Faker::Number.number(digits: 11) }
    type { 'AuthorizeTransaction' }
    status { 'approved' }
    merchant

    trait :approved do
      status { 'approved' }
    end

    trait :reversed do
      status { 'reversed' }
    end

    trait :refunded do
      status { 'refunded' }
    end

    trait :error do
      status { 'error' }
    end
  end
end
