class SectorsController < ApplicationController
  before_action :set_params
  before_action :set_sector, only: [:show,:edit,:update,:destroy]
  before_action :init_google_places, only: [:update]
  def index

  end

  def new
    @sector = Sector.new
  end

  def create
    @sector = Sector.new(get_sector)
    @sector.city = @city
    if @sector.save
      flash[:success] = "Sector creado"
      redirect_to country_city_path(@country,@city)
    else
      render :new
    end

  end

  def edit

  end
  def update
    render json: @client
    # if @sector.update(get_sector)
    #   flash[:success] = "Sector actualizado"
    #   redirect_to country_city_path(@country,@city)
    # else
    #   render :edit
    # end
  end
  def show

  end

  def destroy

  end

  private

  def set_params
    @country = Country.find(params[:country_id])
    @city = City.find(params[:city_id])
  end

  def get_sector
    params.require(:sector).permit(:name, :zip,:lon,:lat)
  end

  def set_sector
    @sector = Sector.find(params[:id])
  end

  def init_google_places
    @client = GooglePlaces::Client.new('AIzaSyDpbSkYMrPiBfDApjWSH04B1XDlt3k18xg')
    @client.spots_by_query('Gazcue Santo Domingo')
  end
end