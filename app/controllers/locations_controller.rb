class LocationsController < ApplicationController
    skip_before_action :authenticate_user!, only: :index
    skip_after_action :verify_authorized, only: :dashboard


  def index
    @locations = policy_scope(Location)
  end

  def dashboard
    @locations = current_user.locations
    # authorize @location
  end


  def new
    @location = Location.new
    authorize @location
  end

  def create
    @location = Location.new(location_params)
    @location.user = current_user
    authorize @location
    if @location.save!
      redirect_to location_path(@location)
    else
      render 'new'
    end
  end

  def show
    @location = Location.find(params[:id])
    @booking = Booking.new
    authorize @location
  end

  def edit
    @location = Location.find(params[:id])
    authorize @location
  end

  def update
    @location = Location.find(params[:id])
    @location.update(location_params)
    authorize @location
    redirect_to location_path(@location)
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    authorize @location
    redirect_to dashboard_path
  end

  private

  def location_params
    params.require(:location).permit(:name, :address, :category, :description, :price, :photo)
  end

  def article_params
  params.require(:article).permit(:title, :body, :photo)
end
end
