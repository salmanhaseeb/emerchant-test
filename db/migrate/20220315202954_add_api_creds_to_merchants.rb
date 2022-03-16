class AddApiCredsToMerchants < ActiveRecord::Migration[7.0]
  def change
    add_column :merchants, :api_user_name, :string
    add_column :merchants, :api_password, :string
  end
end
