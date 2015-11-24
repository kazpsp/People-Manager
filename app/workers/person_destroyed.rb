class PersonDestroyed
  @queue = :email_queue
  # Resque worker for sending "person destroyed" emails
  # 
  # person_full_name - full name of the deleted person
  # recipient_id - id of the person recieving the email
  def self.perform(person_full_name, recipient_id)
    recipient = Person.find(recipient_id)
    NotificationMailer.person_destroyed(person_full_name, recipient).deliver  
  end
end