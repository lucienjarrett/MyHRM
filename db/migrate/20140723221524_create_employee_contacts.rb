class CreateEmployeeContacts < ActiveRecord::Migration
  def change
    create_table :employee_contacts do |t|
      t.references :employee
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.boolean :is_emergency_contact

      t.timestamps
    end
  end
end
