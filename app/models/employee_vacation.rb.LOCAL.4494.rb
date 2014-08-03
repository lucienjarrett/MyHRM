class EmployeeVacation < ActiveRecord::Base
  
  belongs_to :vacation 
  belongs_to :employee
  accepts_nested_attributes_for :vacation
end
