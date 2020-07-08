require 'rails_helper'

RSpec.describe Charge, type: :model do

  it "belongs to customer" do
    Charge.reflect_on_association(:customer).macro.should  eq(:belongs_to)
  end

  it "check successful" do
    charges = Charge.successful
    expect(charges.count).to eq(10)
  end

  it "check failed" do
    charges = Charge.failed
    expect(charges.count).to eq(5)
  end

  it "check disputed" do
    charges = Charge.disputed
    expect(charges.count).to eq(5)
  end
end
