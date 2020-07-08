require "spec_helper"

describe "charge/index.html.erb" do
  before(:each) do
    assign(:failed, Charge.failed)
    assign(:disputed, Charge.disputed)
    assign(:successed, Charge.successed)
    render
  end

  it "Three lists on the screen" do
    rendered.should have_css("table", :count => 3)
  end

  it "successed charges list with 10 items" do
    rendered.should have_css("#successed tr", :count => 10)
  end

  it "failed charges list with 5 items" do
    rendered.should have_css("#failed tr", :count => 5)
  end

  it "disputed charges list with 5 items" do
    rendered.should have_css("#disputed tr", :count => 5)
  end
end
