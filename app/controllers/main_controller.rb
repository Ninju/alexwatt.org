class MainController < ApplicationController
  respond_to :json

  def about
  end

  def portfolio_items
    respond_with(PortfolioItem.all)
  end
end
