# frozen_string_literal: true

json.array! @transactions, partial: 'admins_transactions/admins_transaction', as: :admins_transaction
