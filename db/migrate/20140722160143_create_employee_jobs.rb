class CreateEmployeeJobs < ActiveRecord::Migration
  def change
    create_table :employee_jobs do |t|
      t.string :employee_name
      t.references :employee
      t.timestamps
    end
  end
end
