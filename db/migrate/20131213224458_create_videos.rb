class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|

      t.string :title
      t.string :thumbnail
      t.string :embed_url

      t.timestamps
    end
  end
end
