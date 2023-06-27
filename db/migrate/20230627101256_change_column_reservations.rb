class ChangeColumnReservations < ActiveRecord::Migration[6.1]
  def change
    change_column_default :reservations, :day, from: nil, to: false
  end

  def change
  change_column_default :reservations, :time, from: nil, to: false
  end

  def change
   change_column_default :reservations, :start_time, from: nil, to: false
  end
end
