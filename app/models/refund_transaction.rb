# frozen_string_literal: true

class RefundTransaction < Transaction
  belongs_to :charge_transaction, class_name: 'Transaction'

  validate :is_related_charge_transaction_refunded

  def is_related_charge_transaction_refunded
    return if charge_transaction_id.nil?

    ct = ChargeTransaction.find(charge_transaction_id)
    unless ct.refunded?
      errors.add(:refund_transaction, 'Refund Transaction can only be created if charge transaction is refunded.')
    end
  end
end
