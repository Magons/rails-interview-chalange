# frozen_string_literal: true

require 'rails_helper'

describe 'charges/index.html.erb' do
  before(:all) do
    assign(:successful, Charge.successful)
    assign(:failed, Charge.failed)
    assign(:disputed, Charge.disputed)
  end

  it 'renders 3 lists' do
    render

    expect(rendered).to have_css('table', count: 3)
  end

  it 'renders 10 successful charges' do
    render

    expect(rendered).to have_css('#successful tr', count: 10)
  end

  it 'renders 5 failed charges' do
    render

    expect(rendered).to have_css('#failed tr', count: 5)
  end

  it 'renders 5 disputed charges' do
    render

    expect(rendered).to have_css('#disputed tr', count: 5)
  end

  it 'renders exactly disputed charges in the disputed charges table' do
    render

    disputed_charge = Charge.disputed.first
    expect(rendered).to have_css("#disputed tr##{disputed_charge.id} td:first-child",
                                 text: disputed_charge.customer.full_name)
  end
end
