require 'rails_helper'

RSpec.describe 'admins/transactions/edit', type: :view do
  before(:each) do
    @admins_transaction = assign(:admins_transaction, Admins::Transaction.create!)
  end

  it 'renders the edit admins_transaction form' do
    render

    assert_select 'form[action=?][method=?]', admins_transaction_path(@admins_transaction), 'post' do
    end
  end
end
