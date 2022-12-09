class CreateMoviegenres < ActiveRecord::Migration[7.0]
  def change
    create_table :moviegenres do |t|
      t.integer :mg_genreid
      t.integer :mg_movieid

      t.timestamps
    end
  end
end
