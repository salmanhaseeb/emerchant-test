require 'rails_helper'

RSpec.describe "admins/merchants/show", type: :view do
  before(:each) do
    @admins_merchant = assign(:admins_merchant, Admins::Merchant.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
