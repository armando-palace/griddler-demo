# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.default_url_options = { host: "localhost:3000" }
  # Don't care if the mailer can't send.
ActionMailer::Base.raise_delivery_errors = true

ActionMailer::Base.smtp_settings = {
  :user_name => ENV["SENDGRID_USERNAME"],
  :password => ENV["SENDGRID_PASSWORD"],
  #:user_name => "jesusdibyte",
  #:password => "Sailll77",
  :domain => 'gmail.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

# ActionMailer::Base.smtp_settings = {
#   :user_name => ENV["GMAIL_USERNAME"],
#   :password => ENV["GMAIL_PASSWORD"],
#   :domain => 'gmail.com',
#   :address => 'smtp.gmail.com',
#   :port => 587,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }

# ActionMailer::Base.delivery_method = :mailgun
# ActionMailer::Base.mailgun_settings = {
# 	api_key: ENV["MAILGUN_API_KEY"],
# 	domain: ENV["MAILGUN_DOMAIN"]
# }

# ActionMailer::Base.delivery_method = :smtp

# ActionMailer::Base.smtp_settings = {
#   :user_name => ENV["MAILGUN_USERNAME"],
#   :password => ENV["MAILGUN_PASSWORD"],
#   :domain => 'sandbox4e9c4fd2237d49848f9e34f758a3963d.mailgun.org',
#   :address => 'smtp.mailgun.org',
#   :port => 587,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }