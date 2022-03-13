class ChargeTransaction < Transaction
  belongs_to :authorize_transaction, class_name: "Transaction", optional: true
  has_one :refund_transaction, class_name: "RefundTransaction", foreign_key: "refund_transaction_id"
end
