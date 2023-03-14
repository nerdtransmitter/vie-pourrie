class MoodsController < ApplicationController
  def index
    @mood = Mood.new
  end

  def new

  end

  def create
    @mood.new(mood_params)
    @mood.save
    redirect_to filters_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def mood_params
    params.require(:journal_entry).permit(:emotion)
  end
end
