# frozen_string_literal: true

module ChargesHelper
  def d(cents)
    number_to_currency cents / 100.to_f
  end
end
