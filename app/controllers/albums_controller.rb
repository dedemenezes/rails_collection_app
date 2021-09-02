require 'faraday'
require 'open-uri'
class AlbumsController < ApplicationController

  def index
    @albums = policy_scope(Album)
  end

  def new
    @album = Album.new
    response = URI.open('https://www.moat.ai/api/task/', "Basic" => "ZGV2ZWxvcGVyOlpHVjJaV3h2Y0dWeQ==")
    @task = Faraday.get("https://www.moat.ai/api/task/", "Basic" => "ZGV2ZWxvcGVyOlpHVjJaV3h2Y0dWeQ==")
    raise
    @task
  end
end
