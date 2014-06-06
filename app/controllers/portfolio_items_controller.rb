class PortfolioItemsController < ApplicationController
  respond_to :json

  def index
    @portfolio_items = PortfolioItem.all
    respond_with(@portfolio_items)
  end

  def create
    @portfolio_item = PortfolioItem.create!(portfolio_item_params)
    respond_with(@portfolio_item)
  end

  private
    def portfolio_item_params
      params[:portfolio_item]
    end
end
