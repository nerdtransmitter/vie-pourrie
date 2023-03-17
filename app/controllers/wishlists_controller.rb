class WishlistsController < ApplicationController
  def create
    @wishlist = Wishlist.new
    @card = Card.find(params[:card_id])
    @wishlist.card = @card
    @wishlist.user = current_user
    if @wishlist.save
      redirect_to cards_path, notice: "Ta carte a été sauvegardée"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @wishlist = Wishlist.find(params[:id])
    @wishlist.destroy
    redirect_to wishlists_path
  end

  def index
    @wishlists = current_user.wishlists
  end
end
