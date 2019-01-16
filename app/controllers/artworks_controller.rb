class ArtworksController < ApplicationController
  before_action :set_artist, only: [:show, :create, :destroy]

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
    @artwork = @artist.artworks.create(artwork_params)
    if @artwork.valid?
      redirect_to @artwork
    else
      redirect_to new_artwork_path
    end
  end

  def destroy
    @artwork = Artwork.find(params[:artist_id])
    @artwork.destroy
    redirect_to @artist
  end

  private

  def artwork_params
    params.require(:artwork).permit(:name, :artist_id)
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

end
