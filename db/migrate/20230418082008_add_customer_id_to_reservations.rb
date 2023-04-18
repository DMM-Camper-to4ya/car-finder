class AddCustomerIdToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :customer_id, :string
  end
end
