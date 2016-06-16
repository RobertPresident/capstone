class CategoriesController < ApplicationController
  def index
    
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    
  end

  def create
    @service = Service.create(
        name: params[:name]
      )
  end

  def edit
    @service = Service.find(params[:id])
  end
end
