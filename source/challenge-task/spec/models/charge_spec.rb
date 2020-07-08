require 'rails_helper'

RSpec.describe Charge, type: :model do

  it "check successed charges count" do
    expect(Charge.successed.count).to eq(10)
  end

  it "check failed charges count" do
    expect(Charge.failed.count).to eq(5)
  end

  it "check disputed charges count" do
    expect(Charge.disputed.count).to eq(5)
  end

  it "belongs to customer association" do
    Charge.reflect_on_association(:customer).macro.should  eq(:belongs_to)
  end
end
