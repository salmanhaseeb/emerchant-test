FactoryBot.define do
  factory :charge_transaction do
    authorize_transaction
    merchant { authorize_transaction.merchant }
    amount { authorize_transaction.amount }
    customer_email { authorize_transaction.customer_email }
    customer_phone { authorize_transaction.customer_phone }
    status { authorize_transaction.status }
    type { 'ChargeTransaction' }

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
