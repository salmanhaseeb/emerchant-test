require 'rails_helper'

RSpec.describe 'admins/merchants/edit', type: :view do
  before(:each) do
    @admins_merchant = assign(:admins_merchant, Admins::Merchant.create!)
  end

  it 'renders the edit admins_merchant form' do
    render

    assert_select 'form[action=?][method=?]', admins_merchant_path(@admins_merchant), 'post' do
    end
  end
end
