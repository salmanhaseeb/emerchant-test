FactoryBot.define do
  factory :reversal_transaction do
    authorize_transaction
    merchant { authorize_transaction.merchant }
    amount { authorize_transaction.amount }
    customer_email { authorize_transaction.customer_email }
    customer_phone { authorize_transaction.customer_phone }
    type { "ReversalTransaction" }
    status { authorize_transaction.status }

    trait :approved do
      status { "approved" }
    end

    trait :reversed do
      status { "reversed" }
    end

    trait :refunded do
      status { "refunded" }
    end

    trait :error do
      status { "error" }
    end
  end
end