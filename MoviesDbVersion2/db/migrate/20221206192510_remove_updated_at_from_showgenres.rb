class RemoveUpdatedAtFromShowgenres < ActiveRecord::Migration[7.0]
  def change
    remove_column :showgenres, :updated_at, :datetime
  end
end
