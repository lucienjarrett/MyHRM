class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string
    add_column :users, :first_name, :string 
    add_column :users, :last_name, :string 
    add_column :users, :is_active, :boolean
  end
end
