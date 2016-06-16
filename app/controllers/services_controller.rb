class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    
  end

  def create
    @service = Service.create(
        address: params[:address],
        website: params[:website],
        phone_number: params[:phone_number],
        name: params[:name]
      )

    flash[:success] = "Resource Added"
    redirect_to "/services/#{@service.id}" 
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])

    if @service.update(
        address: params[:address],
        website: params[:website],
        phone_number: params[:phone_number],
        name: params[:name]
      )

    flash[:success] = "Service Updated"
    redirect_to "/services/#{@service.id}"
    else 
      render :edit
    end
  end

  def destroy
    service = Service.find(params[:id])
    service.destroy

    flash[:warning] = "Service Deleted"
    redirect_to '/services'
  end
end
