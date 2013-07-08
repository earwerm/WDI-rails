class StockController < ApplicationController
  def index
  end

  def lookup
      @symbol = params[:symbol].upcase
    if @symbol.nil? || @symbol.empty?
      @lookup = '-   Please type a Stock symbol'
    else
      @lookup = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
    end
  end
end
