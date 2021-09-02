class PagesController < ApplicationController
  def home
  end

  def artists
    @artists = Requests::Artists.list
  end
end
