class ReversalTransaction < Transaction
  belongs_to :authorize_transaction, class_name: "Transaction", optional: true
end