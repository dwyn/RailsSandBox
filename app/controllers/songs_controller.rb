# frozen_string_literal: true

class SongsController < ApplicationController


  def index
    if params[:artist_id]
      @songs = Artist.find(params[:artist_id]).songs
      @explicit_songs = @songs.explicit_songs
    else
      @songs = Song.all
      @explicit_songs = Song.explicit_songs
    end
  end

  def explicits
    @explicit_songs = Song.explicit_songs
  end
  
  def not_explicits
     @not_explicit_songs = Song.not_explicit_songs
  end

  def show
    if params[:artist_id]
    end
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
