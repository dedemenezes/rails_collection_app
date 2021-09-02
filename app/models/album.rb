class Album < ApplicationRecord
  validates :artist, :album_name, :year, presence:  true
  validates :year, length: { is: 4 }
  validates :year, numericality: { less_than_or_equal_to: Date.today.year }
end
