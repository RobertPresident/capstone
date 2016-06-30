class Service < ActiveRecord::Base

  has_many :ratings
  has_many :users, through: :ratings
  
  has_many :categorized_services
  has_many :categories, through: :categorized_services
  
end
