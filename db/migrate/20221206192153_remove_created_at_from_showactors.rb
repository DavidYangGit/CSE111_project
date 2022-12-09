class RemoveCreatedAtFromShowactors < ActiveRecord::Migration[7.0]
  def change
    remove_column :showactors, :created_at, :datetime
  end
end
