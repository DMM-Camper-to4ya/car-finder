class RemoveTimeFromReservations < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :time, :time
  end
end
