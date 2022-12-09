class RemoveCreatedAtFromMoviegenres < ActiveRecord::Migration[7.0]
  def change
    remove_column :moviegenres, :created_at, :datetime
  end
end
