# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Transaction, type: :model do
  let(:transaction) { FactoryBot.create(:transaction) }

  it 'is valid with valid attributes' do
    expect(transaction).to be_valid
  end

  it 'is not valid without amount equal to  zero' do
    transaction = FactoryBot.build(:transaction, amount: 0)
    expect(transaction).to_not be_valid
  end

  # it "is not valid without an email" do
  #   merchant = Merchant.new(name: Faker::Name.name, status: 'active')
  #   expect(merchant).to_not be_valid
  # end

  it 'is not valid with a wrong status' do
    transaction = FactoryBot.build(:transaction, status: 'blabla')
    expect(transaction).to_not be_valid
  end

  it 'is not valid without a status' do
    transaction = FactoryBot.build(:transaction, status: nil)
    expect(transaction).to_not be_valid
  end
end
