class RemoveCreatedAtFromMovies < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :created_at, :datetime
  end
end
