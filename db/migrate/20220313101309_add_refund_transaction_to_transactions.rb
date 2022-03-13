class AddRefundTransactionToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_reference :transactions, :refund_transaction, type: :uuid
  end
end
