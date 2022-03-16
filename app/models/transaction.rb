# frozen_string_literal: true

class Transaction < ApplicationRecord
  belongs_to :merchant
  validate :amount_greater_than_zero
  validates_presence_of :customer_email, :status
  validates_inclusion_of :status, in: %w[approved reversed refunded error]

  def amount_greater_than_zero
    errors.add(:transaction, 'Please add a positive amount') if amount < 1
  end
end
