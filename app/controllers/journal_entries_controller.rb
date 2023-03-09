class JournalEntriesController < ApplicationController
  before_action :set_journalentry, only: [:show, :update, :recap, :edit]

  def new
    # recuperer parent card + params outside et active
    # filtrer pour proposer many children @cards
    @journalentry = JournalEntry.new
  end

  def create
    @journalentry = JournalEntry.new(journalentry_params)
    @journalentry.user = current_user
    redirect_to journal_entry_path(@journalentry)
  end

  def show
  end

  def update
    @journalentry.update(journalentry_params)
    redirect_to recap
  end

  def recap
    if @journalentry.card.address.present?
      @markers = [{ lat: @journalentry.card.latitude, lng: @journalentry.card.longitude, info_window_html: render_to_string(partial: "info_window") }]
    elsif @journalentry.card.website.present?
      @journalentry.card.website
    elsif @journalentry.card.playlist.present?
      @journalentry.card.playlist
    elsif @journalentry.card.video.present?
      @journalentry.card.video
    end
  end

  def edit
  end

  private

  def journalentrie_params
    params.require(:journalentry).permit(:rating, :content, :mood, :card_id)
  end

  def set_journalentry
    @journalentry = JournalEntry.find(params[:id])
  end

end
