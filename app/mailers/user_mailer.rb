class UserMailer < ActionMailer::Base
  default from: "notification@lookingforacreative.com"

  def notification_email(user, advert, response)
    @user = user # Qui contesta
    @advert = advert # L'advert
    @response = response # La resposta, amb el cos i el nom de la persona que contesta
    mail(to: @advert.user.email, subject: 'You have a new request')
  end
end
