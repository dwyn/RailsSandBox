# frozen_string_literal: true

class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
    @song = @artist.songs.build
  end

  def show
    
  end

  def create
    binding.pry
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to @artist
    else
      render :new
    end
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :bio, :location)
    
  end
end
