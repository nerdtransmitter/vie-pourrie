class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  # def edit
  #   @card = Card.find(params[:id])
  # end

  # # def update
  # #   @card.
  # #   @card = Card.
  # # end
end
