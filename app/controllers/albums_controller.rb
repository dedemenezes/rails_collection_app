require 'faraday'
class AlbumsController < ApplicationController

  def index
    @albums = policy_scope(Album)
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

  def album_params
    params.require(:album).permit(:artist, :album_name, :year)
  end
end
