class RemoveUpdatedAtFromMovieactors < ActiveRecord::Migration[7.0]
  def change
    remove_column :movieactors, :updated_at, :datetime
  end
end
