class CardsController < ApplicationController

  def index
    if params[:outside]
      if params[:active]
        @cards = Card.where(outside: params[:outside]).where(active: params[:active])
      else
        @cards = Card.where(outside: params[:outside]) 
      end
    elsif params[:active]
      @cards = Card.where(active: params[:active])
    else
      @cards = Card.where(depth: 1)
    end
    @card = @cards.sample
  end

  def show
    @card = Card.find(params[:id])
  end

  def filters
  end
end
