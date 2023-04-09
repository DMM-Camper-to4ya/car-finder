class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string:car_model
      t.string:years
      t.integer:body_price
      t.integer:total_price
      t.timestamps
    end
  end
end
