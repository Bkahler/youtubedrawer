class Playlist < ActiveRecord::Base
 attr_accessible :title, :user_id

  belongs_to :user
  has_many :playlist_videos, dependent: :destroy
  has_many :videos, through: :playlist_videos

  validates :title, presence: true
  validates :user_id, presence: true

end
