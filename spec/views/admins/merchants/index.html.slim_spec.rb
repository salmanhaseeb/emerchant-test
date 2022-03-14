require 'rails_helper'

RSpec.describe 'admins/merchants/index', type: :view do
  before(:each) do
    assign(:admins_merchants, [
             Admins::Merchant.create!,
             Admins::Merchant.create!
           ])
  end

  it 'renders a list of admins/merchants' do
    render
  end
end
