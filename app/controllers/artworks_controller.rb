class ArtworksController < ApplicationController
  before_action :set_artist, only: [:show, :destroy]

  def index
    @artworks = Artwork.all
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artist = Artist.find(params[:artwork][:artist_id])
    @artwork = @artist.artworks.create!(artwork_params)
    if @artwork.valid?
      redirect_to @artwork
    else
      redirect_to new_artwork_path
    end
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy
    redirect_to @artist
  end

  private

  def artwork_params
    params.require(:artwork).permit(:name, :artist_id, :year)
  end

  def set_artist
    @artist = Artwork.find(params[:id]).artist
  end

end
