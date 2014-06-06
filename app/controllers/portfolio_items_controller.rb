class PortfolioItemsController < ApplicationController
  respond_to :json

  def index
    @portfolio_items = PortfolioItem.all
    respond_with(@portfolio_items)
  end
end
