class TradeController < ApplicationController
  def new
  end

  def create
    Pusher.trigger('price_channel', 'update', {price: params[:price]})
    redirect_to :root
  end
end
