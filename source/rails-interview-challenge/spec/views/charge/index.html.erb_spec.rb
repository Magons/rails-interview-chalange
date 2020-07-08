require "spec_helper"

describe "charge/index.html.erb" do
  before(:each) do
    assign(:charges_types, ["failed", "disputed", "successful"])
    assign(:charges, Charge.all)
    render
  end

  it "Verify that there are three lists on the screen" do
    rendered.should have_css("table", :count => 3)
  end
  
  it "Verify that in the failed charges list there are 5 line items" do
    rendered.should have_css("#charges_failed tr", :count => 5)
  end

  it "Verify that in the disputed charges list there are 5 line items" do
    rendered.should have_css("#charges_disputed tr", :count => 5)
  end

  it "Verify that in the successful charges list there are 10 line items" do
    rendered.should have_css("#charges_successful tr", :count => 10)
  end
end
