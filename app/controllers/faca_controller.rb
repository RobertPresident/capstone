class FacaController < ApplicationController

  def index
    @category = Category.find_by(name: 'Food and Clothing Assistance')
    @services = @category.services
  end
end
