# frozen_string_literal: true

describe 'charges/index' do
  before(:all) do
    Rails.application.load_seed
  end

  before(:each) do
    assign(:successful_charges, Charge.includes(:customer).successful)
    assign(:failed_charges, Charge.includes(:customer).failed)
    assign(:disputed_charges, Charge.includes(:customer).disputed)
    render
  end

  it 'displays three lists on the screen' do
    expect(rendered).to have_css('table', count: 3)
  end

  it 'displays 10 successful charges' do
    expect(rendered).to have_css('.success', count: 10)
  end

  it 'displays 5 failed charges' do
    expect(rendered).to have_css('.failed', count: 5)
  end

  it 'displays 5 disputed charges' do
    expect(rendered).to have_css('.disputed', count: 5)
  end
end
