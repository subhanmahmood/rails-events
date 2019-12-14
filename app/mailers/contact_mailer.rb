class ContactMailer < ApplicationMailer
  @email = email
  @name = name
  @telephone = telephone
  @message = message

  mail cc: @email
end
