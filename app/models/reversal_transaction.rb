# frozen_string_literal: true

class ReversalTransaction < Transaction
  belongs_to :authorize_transaction, class_name: 'Transaction'
end
