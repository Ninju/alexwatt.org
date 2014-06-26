class PortfolioItemsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authenticate_admin_user!, except: [:index]
  before_filter :load_portfolio_item, only: [:update, :destroy]

  respond_to :json

  def index
    @portfolio_items = PortfolioItem.by_start_date
    render json: PortfolioItemsSerializer.as_collection(@portfolio_items)
  end

  def create
    @portfolio_item = PortfolioItem.create!(portfolio_item_params)
    respond_with(@portfolio_item)
  end

  def update
    if @portfolio_item.update_attributes(portfolio_item_params)
      render json: { success: true }, status: :ok
    end
  end

  def destroy
    @portfolio_item.destroy
    render json: { success: true }
  end

  private
    def load_portfolio_item
      @portfolio_item = PortfolioItem.find(params[:id])
    end

    def portfolio_item_params
      params[:portfolio_item]
    end
end
