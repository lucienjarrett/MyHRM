class ChangeEmployeeJobs < ActiveRecord::Migration
  def change
    rename_column :employee_jobs, :employee_name, :employer_name
  end
end
