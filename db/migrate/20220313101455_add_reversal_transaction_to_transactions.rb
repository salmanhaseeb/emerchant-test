class AddReversalTransactionToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_reference :transactions, :reversal_transaction, type: :uuid
  end
end
