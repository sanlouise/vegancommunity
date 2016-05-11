class RemoveTypeAndAddNameFromMeals < ActiveRecord::Migration
  def change
    remove_column :meals, :type, :string
    add_column :meals, :name, :string
  end
end
