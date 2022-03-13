require 'rails_helper'

RSpec.describe "admins/merchants/new", type: :view do
  before(:each) do
    assign(:admins_merchant, Admins::Merchant.new())
  end

  it "renders new admins_merchant form" do
    render

    assert_select "form[action=?][method=?]", admins_merchants_path, "post" do
    end
  end
end
