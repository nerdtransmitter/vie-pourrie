class CardsController < ApplicationController

  def index
    if params[:outside].present?
      if params[:active].present?
        @cards = Card.where(outside: params[:outside]).where(active: params[:active])
      else
        @cards = Card.where(outside: params[:outside])
      end
    else
      @cards = Card.all
    end
  end

  def show
    @card = Card.find(params[:id])
  end

  def filters
  end
end
