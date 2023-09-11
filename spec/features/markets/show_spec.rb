require "rails_helper"

RSpec.describe "Market show page" do
  before(:each) do
    @market = MarketsFacade.new.find_market("328584")
    visit market_path(@market.id)
  end

  it "should have market info" do
    expect(page).to have_content(@market.name)
    expect(page).to have_content(@market.address)
    expect(page).to have_content(@market.city)
    expect(page).to have_content(@market.zip)
  end
end