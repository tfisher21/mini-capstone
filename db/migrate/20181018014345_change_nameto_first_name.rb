class ChangeNametoFirstName < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :name, :first_name 
  end
end