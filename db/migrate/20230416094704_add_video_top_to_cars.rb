class AddVideoTopToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :video_top, :string
  end
end
