class CreateShows < ActiveRecord::Migration[7.0]
  def change
    create_table :shows do |t|
      t.string :s_title
      t.date :s_releaseDate
      t.string :s_studio
      t.string :s_director
      t.integer :s_showid

      t.timestamps
    end
  end
end
