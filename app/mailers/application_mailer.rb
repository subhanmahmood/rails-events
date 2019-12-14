class ApplicationMailer < ActionMailer::Base
  default to: "info@myevents.com", from: 'from@example.com'
  layout 'mailer'
end
