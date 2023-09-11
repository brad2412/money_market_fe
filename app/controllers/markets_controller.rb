class MarketsController < ApplicationController
  def index
    @markets = facade.markets
  end

  def show
    @market = facade.market(params[:id])
  end

  private

  def facade
    @_facade ||= MarketsFacade.new
  end
end