require 'rails_helper'

RSpec.describe "Charges", type: :system do
  before do
    driven_by(:rack_test)
  end

  it "Disputed charges list count" do
    visit "/charges"
    expect(page).to have_selector("table#disputed_table tbody tr", :count=>5)
  end
  it "Failed charges list count" do
    visit "/charges"
    expect(page).to have_selector("table#failed_table tbody tr", :count=>5)
  end
  it "Successful charges list count" do
    visit "/charges"
    expect(page).to have_selector("table#success_table tbody tr", :count=>10)
  end

  it "Check presence of failed list in Disputed" do
    visit "/charges"
    expect(page).to have_selector("table#disputed_table tbody .failed_tr", :count=>0)
  end

end
