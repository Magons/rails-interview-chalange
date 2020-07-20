# frozen_string_literal: true

class Charge < ApplicationRecord
  belongs_to :customer

  scope :successful, -> { where(paid: true, refunded: false) }
  scope :failed, -> { where(paid: false, refunded: false) }
  scope :disputed, -> { where(paid: true, refunded: true) }

  class << self
    def method_missing(m, *args, &block)
      md = /create_(\w*)_charge/.match(m)
      if md
        create_params = args.first
        create_params.merge!({ paid: false, refunded: false })
        if md[1] == 'success'
          create_params.merge!({ paid: true })
        elsif md[1] == 'disputed'
          create_params.merge!({ paid: true, refunded: true })
        end
        Charge.create(create_params)
      else
        super
      end
    end
  end
end
