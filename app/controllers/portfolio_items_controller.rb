class PortfolioItemsController < ApplicationController
  # before_filter :authenticate_user!

  respond_to :json

  def index
    @portfolio_items = PortfolioItem.all
    render(json: ActiveModel::ArraySerializer.new(@portfolio_items, each_serializer: PortfolioItemSerializer).to_json)
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
