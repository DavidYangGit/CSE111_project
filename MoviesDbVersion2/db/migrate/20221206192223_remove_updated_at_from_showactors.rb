class RemoveUpdatedAtFromShowactors < ActiveRecord::Migration[7.0]
  def change
    remove_column :showactors, :updated_at, :datetime
  end
end
