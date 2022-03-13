class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions, id: :uuid do |t|
      t.decimal :amount
      t.string :status, null: false
      t.string :customer_email, null: false
      t.string :customer_phone
      t.belongs_to :merchant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
