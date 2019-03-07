class AddColumnToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :href, :string
  end
end
