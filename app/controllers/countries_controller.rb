class CountriesController < ApplicationController
  before_action :set_params, only: [:edit,:show,:update, :destroy]
  def index
    @countries = Country.all
  end
  def new
    @country = Country.new
  end
  def create
    @country = Country.new(get_params)
    if(@country.save)
      flash[:success] = "Se creo el pais"
      redirect_to countries_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @country.update(get_params)
      flash[:success] = "Se actualizo el pais"
      redirect_to countries_path
    else
      render :edit
    end
  end

  def destroy
    @country.destroy
    flash[:success] = "El pais fue borrado"
    redirect_to countries_path
  end

  def show

  end

  private

  def set_params
    @country = Country.find(params[:id])
  end

  def get_params
    params.require(:country).permit(:name,:zip)
  end
end