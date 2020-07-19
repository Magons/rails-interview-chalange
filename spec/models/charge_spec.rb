require 'rails_helper'

RSpec.describe Charge, type: :model do
  describe "GET Charges" do
    
    it "Successfull Charges" do
      charges = Charge.where(paid: true , refunded: false)
      expect(charges.length).to eq(10)
    end
    it "Failed Charges" do
      charges = Charge.where(paid: false , refunded: false)
      expect(charges.length).to eq(5)
    end
    it "Disputed Charges" do
      charges = Charge.where(paid: true , refunded: true)
      expect(charges.length).to eq(5)
    end
  end
end
