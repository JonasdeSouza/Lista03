class Music < ApplicationRecord
  belongs_to :album
  belongs_to :musical_genre
end
