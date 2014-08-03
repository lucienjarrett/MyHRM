class CreateEmployeeSalaries < ActiveRecord::Migration
  def change
    create_table :employee_salaries do |t|
      t.integer :employee_id
      t.float :rate_per_hour
      t.boolean :is_active
      t.date :date_from
      t.date :date_to

      t.timestamps
    end
  end
end
