class CitiesController < ApplicationController
  before_action :set_country
  before_action :set_city, only: [:show,:edit,:update,:destroy]
  def index
  end
  def show
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(get_city)
    @city.country = @country
    if @city.save
      flash[:success] = "Acaba de agregar "
      redirect_to country_cities_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @city.update(get_city)
      flash[:success] = "Se edito la ciudad"
      redirect_to country_cities_path(@country)
    else
      render :edit
    end
  end

  def destroy

  end

  private

  def set_country
    @country = Country.find(params[:country_id])
  end
  def set_city
    @city = City.find(params[:id])
  end
  def get_city
    params.require(:city).permit(:name, :zip)
  end
end