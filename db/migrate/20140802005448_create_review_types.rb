class CreateReviewTypes < ActiveRecord::Migration
  def change
    create_table :review_types do |t|
      t.string :review_name
      t.boolean :status

      t.timestamps
    end
  end
end
