class EmployeeVacation < ActiveRecord::Base
  
  belongs_to :employee 
  belongs_to :vacation
  
  accepts_nested_attributes_for :employee_vacation 
  
end
