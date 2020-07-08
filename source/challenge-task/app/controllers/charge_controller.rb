class ChargeController < ApplicationController

  def index
    @failed = Charge.failed
    @disputed = Charge.disputed
    @successed = Charge.successed
  end
end
