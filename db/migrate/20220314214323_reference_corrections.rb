class ReferenceCorrections < ActiveRecord::Migration[7.0]
  def change
    remove_reference :transactions, :reversal_transaction, type: :uuid
    remove_reference :transactions, :refund_transaction, type: :uuid
    add_reference :transactions, :charge_transaction, type: :uuid
  end
end
