class CreateMerchants < ActiveRecord::Migration[7.0]
  def change
    create_table :merchants do |t|
      t.string :name, null: false
      t.string :description
      t.string :email, null: false
      t.string :status

      t.timestamps
    end

    add_index :merchants, :email, unique: true
  end
end
