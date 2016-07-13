class CategorizedServicesController < ApplicationController

  def index
    @categorizedservices = CategorizedService.all 
  end
end
