class EaesController < ApplicationController

  def index
    @category = Category.find_by(name: 'Education and Employment Services')
    @services = @category.services
  end
end
