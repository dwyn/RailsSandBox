# frozen_string_literal: true

class SongsController < ApplicationController


  def index
    @songs = Song.all
    @explicit_songs = Song.all_the_explicits
  end

  def show
    # binding.pry
  end

  def new
    if params[:artist_id]
      @artist = Artist.find(params[:artist_id])
      @song = Song.new
    else
      @song = Song.new
    end
  end
  
  def create
    binding.pry
    @song = Song.new(song_params)
    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

  private
    def song_params
     params.require(:song).permit(:title)
    end
end
