class RemoveUpdatedAtFromGenre < ActiveRecord::Migration[7.0]
  def change
    remove_column :genres, :updated_at, :datetime
  end
end
