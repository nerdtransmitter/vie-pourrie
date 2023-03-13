class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def start
    # formulaire avec les options du jour
  end

  def dashboard
    @wishlist_cards = current_user.cards
    @journal_entries = current_user.journal_entries
    # @wishlist = Wishlist.find(params[:id])
  end
end
