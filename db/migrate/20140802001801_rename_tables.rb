class RenameTables < ActiveRecord::Migration
  def change
    rename_table :employee_zcontacts, :employee_contacts
    rename_table :employee_zeducations, :employee_educations
  end
end
