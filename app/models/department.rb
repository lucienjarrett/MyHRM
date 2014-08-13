class Department < ActiveRecord::Base
  has_many :employees 
  validates :department_name, presence: true
end
