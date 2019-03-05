class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :password, :string
    remove_column :users, :name
    add_column :users, :username, :string
  end
end
