class RemoveUpdatedAtFromShows < ActiveRecord::Migration[7.0]
  def change
    remove_column :shows, :updated_at, :datetime
  end
end
