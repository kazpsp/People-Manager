class PersonCreated
  @queue = :email_queue
  # Resque worker for sending "person created" emails
  # 
  # person_id - id of the created person
  # recipient_id - id of the person recieving the email
  def self.perform(person_id, recipient_id)
    person    = Person.find(person_id)
    recipient = Person.find(recipient_id)
    NotificationMailer.person_created(person, recipient).deliver  
  end
end