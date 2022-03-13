class AddAuthorizeTransactionToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_reference :transactions, :authorize_transaction, type: :uuid
  end
end
