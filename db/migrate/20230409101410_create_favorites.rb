class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.string:customer_id
      t.string:car_id
      t.timestamps
    end
  end
end
