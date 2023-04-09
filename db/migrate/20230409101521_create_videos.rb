class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.string:car_id
      t.string:video_url
      t.timestamps
    end
  end
end
