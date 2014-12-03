class UserMailer < ActionMailer::Base
  default from: "notification@lookingforacreative.com"

  def notification_email 
  	@user = user
  	mail(to: @user.email, subject: 'You have a new request')
  	end

  	
end
