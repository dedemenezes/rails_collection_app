require 'faraday'
class AlbumsController < ApplicationController
  before_action :set_album, except: %i( new create)

  def index
    @albums = policy_scope(Album)
  end

  def show
  end

  def new
    @album = Album.new
    @artists = Requests::Artists.names 
    authorize @album
  end

  def create
    @album = Album.new(album_params)
    authorize @album
    if @album.save
      redirect_to albums_path
      flash[:notice] = "Album created!"
    else
      render :new
    end
  end

  private

  def set_album
    @album = Album.find(params[:id])
    authorize @album
  end

  def album_params
    params.require(:album).permit(:artist, :album_name, :year)
  end
end
