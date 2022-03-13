class RefundTransaction < Transaction
  belongs_to :charge_transaction, class_name: "Transaction", optional: true
end
