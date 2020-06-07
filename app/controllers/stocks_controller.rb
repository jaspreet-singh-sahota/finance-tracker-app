class StocksController < ApplicationController

  def search
    byebug
    stock = Stock.new_lookup(params[:stock])
    render json: stock
  end    
end