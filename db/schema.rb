# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_220_314_214_323) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'pgcrypto'
  enable_extension 'plpgsql'

  create_table 'admins', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_admins_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_admins_on_reset_password_token', unique: true
  end

  create_table 'merchants', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'description'
    t.string 'email', null: false
    t.string 'status'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.index ['email'], name: 'index_merchants_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_merchants_on_reset_password_token', unique: true
  end

  create_table 'transactions', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.decimal 'amount'
    t.string 'status', null: false
    t.string 'customer_email', null: false
    t.string 'customer_phone'
    t.bigint 'merchant_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'type'
    t.uuid 'authorize_transaction_id'
    t.uuid 'charge_transaction_id'
    t.index ['authorize_transaction_id'], name: 'index_transactions_on_authorize_transaction_id'
    t.index ['charge_transaction_id'], name: 'index_transactions_on_charge_transaction_id'
    t.index ['merchant_id'], name: 'index_transactions_on_merchant_id'
  end

  add_foreign_key 'transactions', 'merchants'
end
