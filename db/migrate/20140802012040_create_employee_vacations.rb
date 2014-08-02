class CreateEmployeeVacations < ActiveRecord::Migration
  def change
    create_table :employee_vacations do |t|
      t.integer :employee_id
      t.date :date_from
      t.date :date_to
      t.integer :vacation_id

      t.timestamps
    end
  end
end
