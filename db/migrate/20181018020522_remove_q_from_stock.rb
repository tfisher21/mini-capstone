class RemoveQFromStock < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :stock?, :stock
  end
end
