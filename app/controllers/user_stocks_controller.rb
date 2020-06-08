class UserStocksController < ApplicationController

	def create
		stock = Stock.check_db(params[:ticker_symbol])
		if stock.blank? 
			stock = Stock.new_lookup(params[:ticker_symbol])
			stock.save
		end
			@user_stock = UserStock.create(user: current_user, stock: stock)
			flash[:notice] = "Stock #{stock.name} was successfully added to your portfolio"
			redirect_to my_portfolio_path
  end

  def destroy
    stock = Stock.find_by(ticker_symbol: params[:id])
    user_stock = UserStock.where(user_id: current_user.id, stock_id: stock.id).first
    user_stock.destroy
    flash[:notice] = "#{stock.name} was successfully removed from portfolio"
    redirect_to my_portfolio_path
  end
  
end
