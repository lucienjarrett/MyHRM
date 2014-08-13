class Company < ActiveRecord::Base
  has_many :employees
  has_many :locations
  
  validates :company_name, presence: true
  validates :company_name, uniqueness: true
end
