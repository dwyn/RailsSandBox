class SongsController < ApplicationController

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
