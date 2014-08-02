class CreateVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.string :vacation_name
      t.boolean :status

      t.timestamps
    end
  end
end
