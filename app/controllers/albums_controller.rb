require 'open-uri'
class AlbumsController < ApplicationController

  def index
    @albums = policy_scope(Album)
  end

  def new
    @album = Album.new
    @task = URI.open("https://www.moat.ai/api/task/", "Basic" => "ZGV2ZWxvcGVyOlpHVjJaV3h2Y0dWeQ==")
    artists = JSON.parse(open(@task))

    raise
    @task
  end
end
