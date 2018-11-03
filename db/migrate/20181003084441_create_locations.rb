class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :latitude
      t.string :longitude
      t.references :user, foreign_key: true

      t.timestamps null: false
    end
  end
end
