class CreateMovieactors < ActiveRecord::Migration[7.0]
  def change
    create_table :movieactors do |t|
      t.integer :ma_movieid
      t.integer :ma_actorid

      t.timestamps
    end
  end
end
