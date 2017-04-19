class ApplicationMailer < ActionMailer::Base
  default from: "jesus@dibaricorp.com"
  # default from: "postmaster@sandbox4e9c4fd2237d49848f9e34f758a3963d.mailgun.org"
  layout 'mailer'
end
