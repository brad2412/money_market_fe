class MarketsFacade 
  def initialize
    @markets_by_id = {}
  end

  def markets 
    @markets ||= parse(get_markets).map { |data| Market.new(data) }
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