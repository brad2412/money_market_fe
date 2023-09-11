require "rails_helper"

RSpec.describe MarketsFacade, :vcr do
  it "should have all markets" do
    markets = MarketsFacade.new.all_markets

    markets.each do |market|
      expect(market).to be_a(Market)
      expect(market.id).to be_a(String)
      expect(market.name).to be_a(String)
      expect(market.city).to be_a(String)
      expect(market.state).to be_a(String)
      expect(market.street).to be_a(String)
      expect(market.zip).to be_a(String)
    end
  end

  it "should show a market" do
    market = MarketsFacade.new.find_market("567890")

    expect(market).to be_a(Market)
    expect(market.id).to be_a(String)
    expect(market.name).to be_a(String)
    expect(market.city).to be_a(String)
    expect(market.state).to be_a(String)
    expect(market.street).to be_a(String)
    expect(market.zip).to be_a(String)
  end
end