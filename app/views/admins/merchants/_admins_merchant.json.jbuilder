# frozen_string_literal: true

json.extract! admins_merchant, :id, :created_at, :updated_at
json.url admins_merchant_url(admins_merchant, format: :json)
