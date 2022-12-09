class RemoveUpdatedAtFromMoviegenres < ActiveRecord::Migration[7.0]
  def change
    remove_column :moviegenres, :updated_at, :datetime
  end
end
