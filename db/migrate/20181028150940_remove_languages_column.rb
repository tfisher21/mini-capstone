class RemoveLanguagesColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :language, :string
  end
end
