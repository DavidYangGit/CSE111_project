class CreateShowactors < ActiveRecord::Migration[7.0]
  def change
    create_table :showactors do |t|
      t.integer :sa_showid
      t.integer :sa_actorid

      t.timestamps
    end
  end
end
