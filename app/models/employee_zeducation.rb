class EmployeeZeducation < ActiveRecord::Base
  belongs_to :education 
  belongs_to :employee
  accepts_nested_attributes_for :education
  
  #validates :school_attended, :presence=> true
end
