require 'open-uri'
class AlbumsController < ApplicationController

  def index
    @albums = policy_scope(Album)
  end

  def new
    @album = Album.new
    @task = URI.open("https://moat.ai/api/task/", "Authorization" => "BasicZGV2ZWxvcGVyOlpHVjJaV3h2Y0dWeQ")
    raise
    @task
  end
end
