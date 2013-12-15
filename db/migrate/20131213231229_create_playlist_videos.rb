class CreatePlaylistVideos < ActiveRecord::Migration
  def change
    create_table :playlist_videos do |t|

      t.integer :playlist_id
      t.integer :video_id

      t.timestamps
    end
  end
end
