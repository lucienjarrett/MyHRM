class AddDateFromToEmployeeJobs < ActiveRecord::Migration
  def change
    add_column :employee_jobs, :date_from, :date
    add_column :employee_jobs, :date_to, :date
  end
end
