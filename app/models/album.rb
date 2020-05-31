class Album < ApplicationRecord
  validates :name, presence: true
  validates :artist, presence: true
  has_many :music, dependent: :destroy
end
