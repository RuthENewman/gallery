class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :destroy]
  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    if @artist.valid?
      redirect_to @artist
    else
      render 'new'
    end
  end

  def destroy
    @artist.destroy
    redirect_to artists_path
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :birthyear, :deathyear)
  end

end
