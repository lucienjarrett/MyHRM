class EmployeeEducation < ActiveRecord::Base
  belongs_to :education 
  belongs_to :employee
  accepts_nested_attributes_for :education
end
