class Merchant < ApplicationRecord
  validates_presence_of :email, :name, :status
  validates_uniqueness_of :email
  validates_inclusion_of :status, :in => %w( active inactive )
  has_many :transactions, dependent: :destroy

  def total_transaction_sum
  end
end
