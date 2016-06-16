class RatingsController < ApplicationController
  def index
    
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    
  end

  def create
    @service = Service.create(
        user_id: params[:user_id],
        service_id: params[:service_id],
        score: params[:score]
      )

    flash[:success] = "Rating Added"
    redirect_to "/services/#{@service.id}"
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])

    if @service.update(
        name: params[:name],
        ethnicity: params[:ethnicity],
        measurements: params[:measurements],
        image: params[:image]
      )

    flash[:success] = "Rating Updated"
    redirect_to "/services/#{@service.id}"
    else 
      render :edit
    end
  end

  def destroy
    service = Service.find(params[:id])
    service.destroy

    flash[:warning] = "Rating Deleted"
    redirect_to '/services'
  end
end

 

    

    



