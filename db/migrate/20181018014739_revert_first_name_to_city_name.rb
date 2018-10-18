class RevertFirstNameToCityName < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :first_name, :city_name
  end
end
