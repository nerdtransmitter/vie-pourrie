class JournalEntriesController < ApplicationController
  before_action :set_journalentry, only: [:show, :update, :recap, :edit]
  
  def new
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
