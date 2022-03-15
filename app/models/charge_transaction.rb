class ChargeTransaction < Transaction
  belongs_to :authorize_transaction, class_name: 'Transaction', optional: true
  has_one :refund_transaction, class_name: 'RefundTransaction', foreign_key: 'charge_transaction_id'
  scope :approved, -> { where(status: 'approved') }
end
