class RenameImageUrLtoImageId < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :image_id, :integer
    remove_column :products, :image_url, :string

  end
end