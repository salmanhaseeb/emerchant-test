require 'rails_helper'

RSpec.describe "admins/transactions/index", type: :view do
  before(:each) do
    assign(:admins_transactions, [
      Admins::Transaction.create!(),
      Admins::Transaction.create!()
    ])
  end

  it "renders a list of admins/transactions" do
    render
  end
end
