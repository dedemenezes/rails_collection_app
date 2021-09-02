require 'faraday'
class AlbumsController < ApplicationController

  def index
    @albums = policy_scope(Album)
  end

  def new
    @album = Album.new
    @artists = Requests::Artists.list
    raise
    @task
  end
end
