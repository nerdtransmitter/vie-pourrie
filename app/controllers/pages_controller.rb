class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    # @journal_entry = JournalEntry.find(params[:id])
    @mood = Mood.new
    # Create a new Mood object and set the appropriate attributes
    # Save the Mood object to the database
    # Redirect to the appropriate page
  end

  def start
    # formulaire avec les options du jour
  end

  def dashboard
    @wishlist_cards = current_user.cards
    @journal_entries = current_user.journal_entries
    @journal_entries = @journal_entries.order('created_at DESC')
    @wishlists = current_user.wishlists
    # @wishlist = Wishlist.find(params[:id])
  end
end
