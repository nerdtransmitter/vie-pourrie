class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    # @journal_entry = JournalEntry.find(params[:id])
  end

  def start
    # formulaire avec les options du jour
  end

  def dashboard
    @wishlist_cards = current_user.cards
    @journal_entries = current_user.journal_entries
    @wishlists = current_user.wishlists
    # @wishlist = Wishlist.find(params[:id])
  end
end
