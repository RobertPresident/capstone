class Service < ActiveRecord::Base
  
  has_many :categorized_services
  has_many :categories, through: :categorized_services
  
end

