class AddCommentToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :comment, :string
  end
end
