require 'rails_helper'

RSpec.describe 'admins/transactions/new', type: :view do
  before(:each) do
    assign(:admins_transaction, Admins::Transaction.new)
  end

  it 'renders new admins_transaction form' do
    render

    assert_select 'form[action=?][method=?]', admins_transactions_path, 'post' do
    end
  end
end
