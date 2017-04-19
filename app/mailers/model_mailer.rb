class ModelMailer < ApplicationMailer
	default from: "postmaster@sandbox4e9c4fd2237d49848f9e34f758a3963d.mailgun.org"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  #
  def new_record_notification(record)
    @record = record
    mail to: "postmaster@sandbox4e9c4fd2237d49848f9e34f758a3963d.mailgun.org", subject: "Success! You did it"
  end
end
