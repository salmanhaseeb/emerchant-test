# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'admins/transactions/show', type: :view do
  before(:each) do
    @admins_transaction = assign(:admins_transaction, Admins::Transaction.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
