class RemoveCreatedAtFromGenre < ActiveRecord::Migration[7.0]
  def change
    remove_column :genres, :created_at, :datetime
  end
end
