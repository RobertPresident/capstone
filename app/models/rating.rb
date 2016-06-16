class Rating < ActiveRecord::Base

  belong_to :users
  has_many :users
  has_many :services
end
