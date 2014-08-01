class Education < ActiveRecord::Base

  has_many :employee_zeducations , :dependent => :destroy 
  has_many :employees, :through => :employee_zeducations
  
  accepts_nested_attributes_for :employee_zeducations, :allow_destroy =>true, :reject_if => :all_blank
  accepts_nested_attributes_for :employees
 

end
