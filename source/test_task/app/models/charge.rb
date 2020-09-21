class Charge < ApplicationRecord
  belongs_to :customer

  validates :amount, :currency, presence: true

  scope :successful, -> { where(paid: true, refunded: false) }
  scope :failed, -> { where(paid: false, refunded: false) }
  scope :disputed, -> { where(paid: true, refunded: true) }

  class << self
    def create_successful(params)
      create(params.merge(paid: true, refunded: false))
    end

    def create_failed(params)
      create(params.merge(paid: false, refunded: false))
    end

    def create_disputed(params)
      create(params.merge(paid: true, refunded: true))
    end
  end
end
