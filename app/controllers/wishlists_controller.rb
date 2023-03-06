class WishlistsController < ApplicationController
  def create
    @wishlist = Wishlist.new
    @journal_entry = JournalEntry.find(params[:id])
    @card = @journal_entry.card
    @wishlist.card = @card
    @wishlist.user = current_user
    if @wishlist.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
