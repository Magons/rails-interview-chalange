class Charge < ApplicationRecord
  belongs_to :customer

  scope :successed, -> { where(paid: true, refunded: false) }
  scope :failed, -> { where(paid: false, refunded: false) }
  scope :disputed, -> { where(paid: true, refunded: true) }
 
  class << self
    def create_success(params)
      params.merge!(paid: true, refunded: false)
      create(params)
    end

    def create_failed(params)
      params.merge!(paid: false, refunded: false)
      create(params)
    end

    def create_disputed(params)
      params.merge!(paid: true, refunded: true)
      create(params)
    end
  end
end
