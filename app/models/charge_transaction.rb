# frozen_string_literal: true

class ChargeTransaction < Transaction
  belongs_to :authorize_transaction, class_name: 'Transaction'
  has_one :refund_transaction, class_name: 'RefundTransaction', foreign_key: 'charge_transaction_id'
  scope :approved, -> { where(status: 'approved') }

  validate :is_related_authorized_transaction_approved

  def is_related_authorized_transaction_approved
    return if authorize_transaction_id.nil?

    at = AuthorizeTransaction.find(authorize_transaction_id)
    unless at.approved?
      errors.add(:charge_transaction, 'Charge Transaction can only be created if authorize transaction is approved.')
    end
  end

  def refunded?
    status == 'refunded'
  end
end
