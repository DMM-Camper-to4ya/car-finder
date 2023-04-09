class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date:date
      t.time:time
      t.timestamps
    end
  end
end
