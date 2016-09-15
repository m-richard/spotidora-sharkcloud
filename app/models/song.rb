class Song < ActiveRecord::Base
  has_many :songlists
  has_many :playlists, through: :songlists

  validates :title, presence: true
  validates :album, presence: true
  validates :artist, presence: true
end
