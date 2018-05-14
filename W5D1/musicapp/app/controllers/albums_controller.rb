class AlbumsController < ApplicationController
  before_action :require_login

  def new
    @bands = Band.all
    render :new
  end

  def edit
    @album = Album.find(params[:id])
    render :edit
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def create
    @album = Album.new(album_param)
    if @album.save
      redirect_to bands_url
    else
      redirect_to new_album_url
    end
  end

  def update
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to bands_url
  end

  private

  def album_param
    params.require(:album).permit(:band_id, :title, :year, :live)
  end
end
