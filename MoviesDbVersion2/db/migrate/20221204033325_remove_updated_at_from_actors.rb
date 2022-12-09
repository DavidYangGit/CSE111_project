class RemoveUpdatedAtFromActors < ActiveRecord::Migration[7.0]
  def change
    remove_column :actors, :updated_at, :datetime
  end
end
