# frozen_string_literal: true

class DeleteTransactionsWorker
  include Sidekiq::Worker

  def perform
    Transaction.where('created_at < ?', 1.hour.ago).destroy_all
  end
end
