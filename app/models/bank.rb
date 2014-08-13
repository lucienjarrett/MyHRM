class Bank < ActiveRecord::Base
  has_many :employees 
  validates :bank_name, presence: true
  validates :is_active, :acceptance => {:accept => true}
  validates :bank_name, uniqueness: true
  
end
