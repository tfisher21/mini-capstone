class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :image_url
      t.string :description
      t.integer :population
      t.string :country
      t.string :language

      t.timestamps
    end
  end
end
