class ChargeController < ApplicationController
  def index
    @charges = Charge.all.includes(:customer)
    @charges_types = ["failed", "disputed", "successful"]
  end
end
