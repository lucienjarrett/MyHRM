class AddRelationshipIdToEmployeeContacts < ActiveRecord::Migration
  def change
    add_reference :employee_contacts, :relationship, index: true
  end
end
