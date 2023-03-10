class JournalEntriesController < ApplicationController
  before_action :set_journal_entry, only: [:show, :update, :recap, :edit]

  def new
    @card = Card.find(params[:parent_card])
    if params[:outside]
      if params[:active]
        @cards = @card.children.where(outside: params[:outside]).where(active: params[:active]).sample(4)
      else
        @cards = @card.children.where(outside: params[:outside]).sample(4)
      end
    elsif params[:active]
      @cards = @card.children.where(active: params[:active]).sample(4)
    else
      @cards = @card.children.where(depth: 1).sample(4)
    end

    @selection = Card.where(params[:card])
    # filtrer pour proposer many children @cards
    @journal_entry = JournalEntry.new
  end

  def create
    @journal_entry = JournalEntry.new(journal_entry_params)
    @card = Card.find(params[:journal_entry][:card].to_i)
    @journal_entry.card = @card
    @journal_entry.user = current_user
    if @journal_entry.save
      redirect_to recap_path(@journal_entry)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def update
    @journal_entry.update(journal_entry_params)
    redirect_to dashboard_path
  end

  def recap
    if @journal_entry.card.address.present?
      @markers = [{ lat: @journal_entry.card.latitude, lng: @journal_entry.card.longitude, info_window_html: render_to_string(partial: "info_window") }]
    elsif @journal_entry.card.website.present?
      @journal_entry.card.website
    elsif @journal_entry.card.playlist.present?
      @journal_entry.card.playlist
    elsif @journal_entry.card.video.present?
      @journal_entry.card.video
    end
    @wishlist = Wishlist.new
  end

  def edit
  end

  private

  def journal_entry_params
    params.require(:journal_entry).permit(:rating, :content, :mood)
  end

  def set_journal_entry
    @journal_entry = JournalEntry.find(params[:id])
  end
end
