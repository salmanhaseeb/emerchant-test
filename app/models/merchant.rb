class Merchant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :email, :name, :status
  validates_uniqueness_of :email
  validates_inclusion_of :status, :in => %w( active inactive )
  has_many :transactions, dependent: :destroy

  def total_transaction_sum
  end
end
