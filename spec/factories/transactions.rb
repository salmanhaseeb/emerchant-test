# frozen_string_literal: true

FactoryBot.define do
  factory :transaction do
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

    trait :authorize_transaction do
      type { 'AuthorizeTransaction' }
    end

    trait :charge_transaction do
      type { 'ChargeTransaction' }
    end

    trait :refund_transaction do
      type { 'RefundTransaction' }
    end

    trait :reversal_transaction do
      type { 'ReversalTransaction' }
    end
  end
end
