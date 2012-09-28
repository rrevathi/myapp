class UserMailer < ActionMailer::Base
  default :from => "bharkavib@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
   def welcome_email(user)
    @site = user
    @url  = "http://example.com/login"
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end
def contactby(contact)
       mail(:to=>contact[:to], :subject=>contact[:subject], :body=>contact[:message])
  end
end
