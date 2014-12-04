class ResponsesController < ApplicationController
  def create
    advert = Advert.find(params[:advert_id])
    UserMailer.notification_email(current_user, advert, params[:response]).deliver
    redirect_to adverts_path
  end
end
