class RenameColumnsForTables2 < ActiveRecord::Migration
  def change
    rename_table :employee_educations, :employee_zeducations
  end
end
