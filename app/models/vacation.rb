class Vacation < ActiveRecord::Base
  has_many :employee_vacations,  :dependent=> :destroy
  has_many :employees, :through => :employee_educations
  
  accepts_nested_attributes_for :employee_educations, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :employees 
  
end
