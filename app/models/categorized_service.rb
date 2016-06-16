class CategorizedService < ActiveRecord::Base

  belongs_to :categories
  belongs_to :services
end
