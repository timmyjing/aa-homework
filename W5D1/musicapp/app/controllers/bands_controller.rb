class BandsController < ApplicationController
  before_action :require_login

  def new
    @band = Band.new
  end

  def index
    @bands = Band.all
    render :index
  end

  def edit
    @band = Band.find(params[:id])
    render :edit
  end

  def update
    @band = Band.find(params[:id])
    if @band.update(band_param)
      redirect_to bands_url(@band)
    else
      render :edit
    end
  end

  def create
    @band = Band.new(band_param)
    if @band.save
      redirect_to bands_url(@band)
    else
      redirect_to new_band_url
    end
  end

  def destroy
    band = Band.find(params[:id])
    band.destroy
    redirect_to bands_url
  end

  def show
    @band = Band.find(params[:id])
    render :show
  end

  private

  def band_param
    params.require(:band).permit(:name)
  end
end
