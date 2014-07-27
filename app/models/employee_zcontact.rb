class EmployeeZcontact < ActiveRecord::Base
  belongs_to :relationship 
  belongs_to :employee
  accepts_nested_attributes_for :relationship
end
