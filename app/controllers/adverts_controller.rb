class AdvertsController < ApplicationController

  before_filter :authenticate_user!, except: [:show, :index]

  def index
    @adverts = Advert.order(id: :desc).limit(2)
  end

  def show
    @advert = Advert.find(params[:id])
  end

  def new
    @advert = Advert.new
  end

  def create
    @advert = current_user.adverts.create(advert_params)
    redirect_to advert_path(@advert)
  end

  private

  def advert_params
    params.require(:advert).permit(:title, :description, {:profile_ids =>[]})
  end
end
