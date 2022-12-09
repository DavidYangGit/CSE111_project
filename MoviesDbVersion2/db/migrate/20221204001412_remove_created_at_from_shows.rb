class RemoveCreatedAtFromShows < ActiveRecord::Migration[7.0]
  def change
    remove_column :shows, :created_at, :datetime
  end
end
