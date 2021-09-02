class Album < ApplicationRecord
  validates :artist, :album_name, :year, presence:  true
end
