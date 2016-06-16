class Category < ActiveRecord::Base

  has_many :services, through: :categorized_services
  has_many :categorized_services
end
