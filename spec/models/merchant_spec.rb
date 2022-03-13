require 'rails_helper'

RSpec.describe Merchant, :type => :model do
  let(:merchant) { FactoryBot.create(:merchant, :active) }

  it "is valid with valid attributes" do
    expect(merchant).to be_valid
  end

  it "is not valid without a name" do
    merchant = Merchant.new(email: Faker::Internet.email, status: 'active')
    expect(merchant).to_not be_valid
  end

  it "is not valid without a password" do
    merchant = Merchant.new(email: Faker::Internet.email, name: Faker::Name.name, status: 'active')
    expect(merchant).to_not be_valid
  end

  it "is not valid without an email" do
    merchant = Merchant.new(name: Faker::Name.name, status: 'active')
    expect(merchant).to_not be_valid
  end
  
  it "is not valid with a wrong status" do
    merchant = Merchant.new(email: Faker::Internet.email, name: Faker::Name.name, status: 'blabla')
    expect(merchant).to_not be_valid 
  end

  it "is not valid without a status" do
    merchant = Merchant.new(email: Faker::Internet.email, name: Faker::Name.name)
    expect(merchant).to_not be_valid 
  end
end
