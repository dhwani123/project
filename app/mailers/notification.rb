class Notification < ActionMailer::Base
  default from: "notification@cube.com"
  def welcome_email(cubestudent)
  	@cubestudent = cubestudent
  	@url = 'http://cube.com/cubestudents/sign_in'
  	mail(to: @cubestudent.email, subject: 'Welcome to Cube')
  end
end
