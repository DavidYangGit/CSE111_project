class CreateActors < ActiveRecord::Migration[7.0]
  def change
    create_table :actors do |t|
      t.string :a_actorname
      t.integer :a_actorid

      t.timestamps
    end
  end
end
