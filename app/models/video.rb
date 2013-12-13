class Video < ActiveRecord::Base
  attr_accessible :title, :thumbnail, :embed_url

  has_many :playlist_videos, dependent: :destroy
  has_many :playlists, through: :playlist_videos

  validates :title, presence: true
  validates :thumbnail, presence: true
  validates :embed_url, presence: true

end
