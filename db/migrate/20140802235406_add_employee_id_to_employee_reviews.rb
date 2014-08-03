class AddEmployeeIdToEmployeeReviews < ActiveRecord::Migration
  def change
    add_column :employee_reviews, :employee_id, :integer
  end
end
