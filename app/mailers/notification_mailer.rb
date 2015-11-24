class NotificationMailer < ApplicationMailer
  default from: "noreply@example.com"
  
  # Sends email about a new person created to recipient
  #
  # person - the person object that was created
  # recipient - the person object that will receive the notification
  #
  # Returns nothing. Send the notification email
  def person_created(person, recipient)
    @person = person
    @recipient = recipient
    mail to: @recipient.email, subject: "People App - New person added"
  end
  
  # Sends email about a deleted person to recipient
  #
  # person_full_name - the deleted person's full name 
  # recipient - the person object that will receive the notification
  #
  # Returns nothing. Send the notification email
  def person_destroyed(person_full_name, recipient)
    @person_full_name = person_full_name
    @recipient = recipient
    mail to: @recipient.email, subject: "People App - Person deleted"
  end
end
