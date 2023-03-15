class WishlistsController < ApplicationController
  def create
    @wishlist = Wishlist.new
    @card = Card.find(params[:card_id])
    @wishlist.card = @card
    @wishlist.user = current_user
    if @wishlist.save
      redirect_to cards_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @wishlist = Wishlist.find(params[:id])
    @wishlist.destroy
    redirect_to dashboard_path
  end

  def index
    @wishlists = current_user.wishlists
  end
end
