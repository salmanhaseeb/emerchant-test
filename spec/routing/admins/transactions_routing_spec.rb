# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admins::TransactionsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/admins/transactions').to route_to('admins/transactions#index')
    end

    it 'routes to #new' do
      expect(get: '/admins/transactions/new').to route_to('admins/transactions#new')
    end

    it 'routes to #show' do
      expect(get: '/admins/transactions/1').to route_to('admins/transactions#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/admins/transactions/1/edit').to route_to('admins/transactions#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/admins/transactions').to route_to('admins/transactions#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/admins/transactions/1').to route_to('admins/transactions#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/admins/transactions/1').to route_to('admins/transactions#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/admins/transactions/1').to route_to('admins/transactions#destroy', id: '1')
    end
  end
end
