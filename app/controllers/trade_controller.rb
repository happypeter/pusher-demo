class TradeController < ApplicationController
  def new
  end

  def create
    Pusher.trigger('price_channel', 'update', {message: params[:price]})
    redirect_to :root
  end
end
