# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admins::MerchantsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/admins/merchants').to route_to('admins/merchants#index')
    end

    it 'routes to #new' do
      expect(get: '/admins/merchants/new').to route_to('admins/merchants#new')
    end

    it 'routes to #show' do
      expect(get: '/admins/merchants/1').to route_to('admins/merchants#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/admins/merchants/1/edit').to route_to('admins/merchants#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/admins/merchants').to route_to('admins/merchants#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/admins/merchants/1').to route_to('admins/merchants#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/admins/merchants/1').to route_to('admins/merchants#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/admins/merchants/1').to route_to('admins/merchants#destroy', id: '1')
    end
  end
end
