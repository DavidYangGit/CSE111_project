class RemoveUpdatedAtFromMovies < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :updated_at, :datetime
  end
end
