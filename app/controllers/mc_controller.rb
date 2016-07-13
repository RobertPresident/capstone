class McController < ApplicationController

  def index
    @category = Category.find_by(name: 'Medical Care')
    @services = @category.services
  end
end
