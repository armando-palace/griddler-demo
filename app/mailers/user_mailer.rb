class UserMailer < ApplicationMailer
  include SendGrid
  sendgrid_category :use_subject_lines
  sendgrid_enable   :ganalytics, :opentrack
  sendgrid_unique_args :key1 => "value1", :key2 => "value2"

  def welcome_email(user)
    @user = user
    @url  = "https://ruby-on-rails-armando-palace.c9users.io"
    sendgrid_category "Welcome"
    sendgrid_unique_args :key2 => "newvalue2", :key3 => "value3"
    mail :to => @user.email, :subject => "Welcome #{@user.name} :-)"
  end

  def goodbye_message(user)
    sendgrid_disable :ganalytics
    mail :to => user.email, :subject => "Fare thee well :-("
  end

  def new_record_notification(record)
    @record = record
    mail to: "postmaster@sandbox4e9c4fd2237d49848f9e34f758a3963d.mailgun.org", subject: "Success! You did it"
  end
end
