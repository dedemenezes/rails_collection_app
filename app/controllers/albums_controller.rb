require 'faraday'
class AlbumsController < ApplicationController

  def index
    @albums = policy_scope(Album)
  end

  def new
    @album = Album.new
    response = Faraday.get("https://www.moat.ai/api/task/", {params: nil}, { "Basic" => "ZGV2ZWxvcGVyOlpHVjJaV3h2Y0dWeQ=="})
    artists = JSON.parse(response.body)
    @task
  end
end
