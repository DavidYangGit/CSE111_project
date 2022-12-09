class CreateGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :genres do |t|
      t.integer :g_genreid
      t.string :g_genrename

      t.timestamps
    end
  end
end
