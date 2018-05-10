class UserMailer < ApplicationMailer
  default from: 'from@99cats.com'

  def welcome_email(user)
    @user = user
    @url  = 'https://99cats.com'
    mail(to: 'everybody@appacademy.io', subject: 'Welcome to My Awesome Site')
  end
end
