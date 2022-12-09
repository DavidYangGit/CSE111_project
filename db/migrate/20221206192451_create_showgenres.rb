class CreateShowgenres < ActiveRecord::Migration[7.0]
  def change
    create_table :showgenres do |t|
      t.integer :sg_genreid
      t.integer :sg_showid

      t.timestamps
    end
  end
end
