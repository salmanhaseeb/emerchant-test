# frozen_string_literal: true

FactoryBot.define do
  factory :refund_transaction do
    charge_transaction
    merchant { charge_transaction.merchant }
    amount { charge_transaction.amount }
    customer_email { charge_transaction.customer_email }
    customer_phone { charge_transaction.customer_phone }
    status { charge_transaction.status }

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
