class OneOnOne < ApplicationRecord
  belongs_to :employee, class_name: 'User'
  belongs_to :manager, class_name: 'User'
  
  validates :employee, :manager, presence: true
end
