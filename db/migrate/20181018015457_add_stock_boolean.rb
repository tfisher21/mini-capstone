class AddStockBoolean < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :stock?, :boolean
  end
end
