class Category < ActiveRecord::Base

  
  has_many :categorized_services
  has_many :services, through: :categorized_services
end
