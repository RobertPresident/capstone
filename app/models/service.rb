class Service < ActiveRecord::Base

  has_many :users
  has_many :ratings
  has_many :categories, through: :categorized_services
  has_many :categorized_services
end
