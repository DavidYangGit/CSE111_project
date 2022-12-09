class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :m_title
      t.date :m_releaseDate
      t.string :m_studio
      t.string :m_director
      t.integer :m_movieid

      t.timestamps
    end
  end
end
