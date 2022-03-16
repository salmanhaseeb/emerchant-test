class Merchant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :email, :name, :status
  validates_uniqueness_of :email
  validates_inclusion_of :status, in: %w[active inactive]
  has_many :transactions, dependent: :restrict_with_error
  has_many :authorize_transactions, dependent: :restrict_with_error
  has_many :charge_transactions, dependent: :restrict_with_error
  has_many :refund_transactions, dependent: :restrict_with_error
  has_many :reversal_transactions, dependent: :restrict_with_error
  before_destroy :check_for_active_transactions
  after_create :generate_api_credentials

  def check_for_active_transactions
    if transactions.count > 0
      errors.add_to_base('Cannot delete merchant while transaction exist')
      false
    end
  end

  def total_transaction_sum
    charge_transactions.where(status: "approved").sum(:amount).to_i
  end

  def generate_api_credentials
    update(api_user_name: "#{name}%.5d" % SecureRandom.random_number(99))
    update(api_password: SecureRandom.random_number(9999))
  end

  def authenticate(user_name, password)
    api_user_name == user_name && api_password == password && status == 'active' ? self : false
  end
end
