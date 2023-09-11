class MarketsFacade 
  def initialize
    @market_id = {}
  end

  def markets 
    @markets ||= parse(all_markets).map { |data| Market.new(data) }
  end

  private
  
  def service
    @_service ||= MarketService.new
  end
  
  def parse(response)
    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def all_markets
    service.all_markets
  end

  def market(id)
    service.find_market(id)
  end
end