class CreateWorkSchedules < ActiveRecord::Migration
  def change
    create_table :work_schedules do |t|
      t.string :name
      t.boolean :is_active

      t.timestamps
    end
  end
end
