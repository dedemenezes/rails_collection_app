class AlbumsController < ApplicationController

  def index
    @albums = policy_scope(Album)
  end
end
