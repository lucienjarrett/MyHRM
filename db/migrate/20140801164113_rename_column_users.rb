class RenameColumnUsers < ActiveRecord::Migration
  def change
    rename_column  :users, :emial, :email
  end
end
