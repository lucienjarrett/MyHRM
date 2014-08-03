class EmployeeVacation < ActiveRecord::Base
  
<<<<<<< HEAD
  belongs_to :vacation 
  belongs_to :employee
  accepts_nested_attributes_for :vacation
=======
  belongs_to :employee 
  belongs_to :vacation
  
  accepts_nested_attributes_for :employee_vacation 
  
>>>>>>> develope
end
