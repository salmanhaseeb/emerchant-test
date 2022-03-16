# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Admin.create(email: 'admin@admin.com', password: '123123')
merchant = Merchant.create(name: 'Merchant 1', email: 'merchant@merchant.com', password: '123123', status: 'active')
FactoryBot.create(:charge_transaction, merchant: merchant)
FactoryBot.create(:refund_transaction, merchant: merchant)
FactoryBot.create(:authorize_transaction, merchant: merchant)
