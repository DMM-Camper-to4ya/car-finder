class RemoveCommentFromCars < ActiveRecord::Migration[6.1]
  def change
    remove_column :cars, :comment, :string
  end
end
