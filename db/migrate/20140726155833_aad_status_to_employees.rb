class AadStatusToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :status, :string
  end
end
