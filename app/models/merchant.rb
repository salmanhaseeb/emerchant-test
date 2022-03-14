class Merchant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :email, :name, :status
  validates_uniqueness_of :email
  validates_inclusion_of :status, in: %w[active inactive]
  has_many :transactions, dependent: :restrict_with_error
  before_destroy :check_for_active_transactions

  def check_for_active_transactions
    if transactions.count > 0
      errors.add_to_base('cannot delete merchant while transaction exist')
      false
    end
  end

  def total_transaction_sum; end
end
