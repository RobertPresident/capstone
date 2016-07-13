class HousesController < ApplicationController

  def index
    @category = Category.find_by(name: 'Housing')
    @services = @category.services
  end
end
