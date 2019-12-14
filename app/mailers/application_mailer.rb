class ApplicationMailer < ActionMailer::Base
  default to: "info@myevents.com", from: 'info@myevents.com'
  layout 'mailer'
end
