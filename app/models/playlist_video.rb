class PlaylistVideo < ActiveRecord::Base
   attr_accessible :playlist_id, :video_id

   belongs_to :video
   belongs_to :playlist
end
