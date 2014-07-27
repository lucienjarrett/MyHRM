class RenameColumnsForTables < ActiveRecord::Migration
  def change
    rename_table :employee_contacts, :employee_zcontacts
   # rename_table :employee_education, :employee_zeducation
  end
end
