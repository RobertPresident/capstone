class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
    search_term = params[:search_term]

    if search_term
      @resources = @resources.where("company ILIKE ? OR street_address ILIKE ?", "%#{search_term}%", "%#{search_term}%")
    end
  end
    



  def show
    @resource = Resource.find(params[:id])
  end

  def new
    
  end

  def create
    @resource = Resource.create(
     company: params[:company],
     street_address: params[:street_address],
     city: params[:city],
     state_abbr: params[:street_abbr],
     zip_code: params[:zip_code],
     url: params[:url],
     phone_number: params[:phone_number]
      )


    flash[:success] = "Resource Added"
    redirect_to "/resources/#{@resource.id}" 
  end

    

  def edit
    @resource = Resource.find(params[:id])
  end

  def update
    @resource = Resource.find(params[:id])
    
    if @resource.update(
        company: params[:company],
        street_address: params[:street_address],
        city: params[:city],
        state_abbr: params[:state_abbr],
        zip_code: params[:zip_code],
        url: params[:url],
        phone_number: params[:phone_number]
      )

    flash[:success] = "Resource Updated"
    redirect_to "/resources/#{@resource.id}"
    else 
      render :edit
    end
  end

  def destroy
    resource = Resource.find(params[:id])
    resource.destroy

    flash[:warning] = "Resource Deleted"
    redirect_to '/resources'
  end
end
