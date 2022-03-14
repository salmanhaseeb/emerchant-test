require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/admins/merchants', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Admins::Merchant. As you add validations to Admins::Merchant, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Admins::Merchant.create! valid_attributes
      get admins_merchants_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      merchant = Admins::Merchant.create! valid_attributes
      get admins_merchant_url(merchant)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_admins_merchant_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      merchant = Admins::Merchant.create! valid_attributes
      get edit_admins_merchant_url(merchant)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Admins::Merchant' do
        expect do
          post admins_merchants_url, params: { admins_merchant: valid_attributes }
        end.to change(Admins::Merchant, :count).by(1)
      end

      it 'redirects to the created admins_merchant' do
        post admins_merchants_url, params: { admins_merchant: valid_attributes }
        expect(response).to redirect_to(admins_merchant_url(Admins::Merchant.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Admins::Merchant' do
        expect do
          post admins_merchants_url, params: { admins_merchant: invalid_attributes }
        end.to change(Admins::Merchant, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post admins_merchants_url, params: { admins_merchant: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested admins_merchant' do
        merchant = Admins::Merchant.create! valid_attributes
        patch admins_merchant_url(merchant), params: { admins_merchant: new_attributes }
        merchant.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the admins_merchant' do
        merchant = Admins::Merchant.create! valid_attributes
        patch admins_merchant_url(merchant), params: { admins_merchant: new_attributes }
        merchant.reload
        expect(response).to redirect_to(admins_merchant_url(merchant))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        merchant = Admins::Merchant.create! valid_attributes
        patch admins_merchant_url(merchant), params: { admins_merchant: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested admins_merchant' do
      merchant = Admins::Merchant.create! valid_attributes
      expect do
        delete admins_merchant_url(merchant)
      end.to change(Admins::Merchant, :count).by(-1)
    end

    it 'redirects to the admins_merchants list' do
      merchant = Admins::Merchant.create! valid_attributes
      delete admins_merchant_url(merchant)
      expect(response).to redirect_to(admins_merchants_url)
    end
  end
end
