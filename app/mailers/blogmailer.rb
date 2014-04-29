class Blogmailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.blogmailer.register.subject
  #
  
  
  def register(user) 
   @user = user 
    mail(:to => user.email, :subject => "Welcome to the site") 
 end


  def registervehicle(user, vehicle) 
   @user = user 
   @vehicle = vehicle
    mail(:to => user.email, :subject => "You have successfully created a new Vehicle") 
 end


end
