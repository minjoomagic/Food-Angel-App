class AddImageToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :thumbnail, :string
  end
end
