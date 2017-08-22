class Username < ActiveRecord::Migration[5.1]
  def up
    rename_column :users, :name, :username
    remove_column :users, :email
  end

  def down
    add_column :users, :email, :string
  end
end
