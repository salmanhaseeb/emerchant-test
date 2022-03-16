# frozen_string_literal: true

class AuthorizeTransaction < Transaction
  has_one :charge_transaction, class_name: 'ChargeTransaction', foreign_key: 'authorize_transaction_id'
  has_one :reversal_transaction, class_name: 'ReversalTransaction', foreign_key: 'authorize_transaction_id'

  def approved?
    status == 'approved'
  end
end
