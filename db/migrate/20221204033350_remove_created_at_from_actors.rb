class RemoveCreatedAtFromActors < ActiveRecord::Migration[7.0]
  def change
    remove_column :actors, :created_at, :datetime
  end
end
