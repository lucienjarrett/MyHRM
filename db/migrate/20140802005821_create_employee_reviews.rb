class CreateEmployeeReviews < ActiveRecord::Migration
  def change
    create_table :employee_reviews do |t|
      t.integer :review_type_id
      t.float :score
      t.date :review_date
      t.string :comments
      t.string :reviewed_by

      t.timestamps
    end
  end
end
