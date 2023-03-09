class WishlistsController < ApplicationController
  def create
    @wishlist = Wishlist.new
    @card = Card.find(params[:card_id])
    @wishlist.card = @card
    @wishlist.user = current_user
    if @wishlist.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
