class ReviewType < ActiveRecord::Base
  has_many :employee_reviews,  :dependent=> :destroy
  has_many :employees, :through => :employee_reviews
  
  accepts_nested_attributes_for :employee_reviews, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :employees 
  
end
