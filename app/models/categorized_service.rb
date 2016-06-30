class CategorizedService < ActiveRecord::Base

  belongs_to :category
  belongs_to :service
end
