class CreateCommunities < ActiveRecord::Migration[6.1]
  def change
    create_table :communities do |t|
      t.string :name
      t.text :mission
      t.text :calendar
      t.references :gnomeparcel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
