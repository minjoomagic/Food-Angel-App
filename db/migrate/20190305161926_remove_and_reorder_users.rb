class RemoveAndReorderUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :username
    remove_column :users, :password
    add_column :users, :username, :string
    add_column :users, :password, :string
  end
end
