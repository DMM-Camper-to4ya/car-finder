class AddBodyToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :body, :string
  end
end
