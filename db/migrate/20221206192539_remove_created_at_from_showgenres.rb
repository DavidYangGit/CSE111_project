class RemoveCreatedAtFromShowgenres < ActiveRecord::Migration[7.0]
  def change
    remove_column :showgenres, :created_at, :datetime
  end
end
