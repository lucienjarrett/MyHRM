class Relationship < ActiveRecord::Base
  has_many :employee_contacts , :dependent => :destroy 
  has_many :employees, :through => :employee_contacts
  
  accepts_nested_attributes_for :employee_contacts, :allow_destroy =>true, :reject_if => :all_blank
  accepts_nested_attributes_for :employees
 
end
