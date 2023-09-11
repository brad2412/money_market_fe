# app/services/merchants_service.rb
class MarketService
  def connection 
    Faraday.new("http://localhost:3000/api/v0")
  end

  def markets
    connection.get("markets")
  end

  def vendors(id)
    connection.get("markets/#{id}/vendors")
  end
end