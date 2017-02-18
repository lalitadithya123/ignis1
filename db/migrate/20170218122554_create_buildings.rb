class CreateBuildings < ActiveRecord::Migration[5.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.references :fire_station, foreign_key: true
      t.string :type
      t.jsonb :properties

      t.timestamps
    end
  end
end
