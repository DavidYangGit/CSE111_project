class RemoveCreatedAtFromMovieactors < ActiveRecord::Migration[7.0]
  def change
    remove_column :movieactors, :created_at, :datetime
  end
end
