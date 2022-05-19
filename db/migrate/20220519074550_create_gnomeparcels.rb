class CreateGnomeparcels < ActiveRecord::Migration[6.1]
  def change
    create_table :gnomeparcels do |t|
      t.text :landaddress
      t.boolean :open_to_visitors
      t.boolean :open_to_new_members
      t.string :latlong
      t.integer :waterbodies
      t.text :maps
      t.integer :population
      t.integer :maxcapacity
      t.text :vision
      t.integer :landhookups
      t.boolean :roadaccess
      t.string :seasonalhazards
      t.boolean :water
      t.boolean :electric
      t.boolean :sewage
      t.boolean :wifi
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
