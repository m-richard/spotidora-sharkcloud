class Playlist < ActiveRecord::Base
  has_many :songlists
  has_many :songs, through: :songlists

  validates :name, presence: true
  validates :creator, presence: true
end
