# frozen_string_literal: true

class ArtistsController < ApplicationController
  load_and_authorize_resource 

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
    @song = @artist.songs.build
  end

  def show
    @artist = Artist.find_by_slug(params[:slug])
  end

  def edit
    @artist = Artist.find_by_slug(params[:slug])
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.user_id = current_user.id
    if @artist.save
      redirect_to @artist
    else
      render :new
    end
  end

  def destroy
    artist = Artist.find_by_slug(params[:slug])
    artist.destroy
    redirect_to artists_path
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :bio, :location, :slug)
    
  end
end
