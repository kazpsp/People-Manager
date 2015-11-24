class Person < ActiveRecord::Base
  
  after_destroy :destroy_email
  after_create  :create_email
  mount_uploader :picture, PictureUploader
  
  validates :first_name, :last_name, :email, :birthdate, presence: true
  validates :first_name, :last_name, :job, length: { maximum: 75 }
  validates :email, length: { maximum: 254 }
  validates :email, uniqueness: true
  validates :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Invalid email format"}
  validates :gender, inclusion: { in: %w(M F), message: "Not a Valid Gender", allow_nil: true, allow_blank: true}
  validate  :validate_birthdate

  default_scope { order(first_name: :asc, last_name: :asc) }

  # Public: Formats the first and last name as the person’s full name
  # 
  # Returns the full_name string
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  
  # Public: Calculates Birthdate
  #
  # Returns age in years
  def age
    (Date.today - self.birthdate).to_i / 365
  end
  
  private
  
  # Internal: Validates that the birthdate is not in the future 
  def validate_birthdate
    errors.add(:birthdate, "Birthdate can't be in the future") if birthdate && birthdate > Date.today
  end
  
  # Internal: After create trigger for sending emails through Resque
  def create_email
    Person.where.not(id: self.id).each do |recipient|
      Resque.enqueue(PersonCreated, self.id, recipient.id)
    end
  end
  
  # Internal: After destroy trigger for sending emails through Resque
  def destroy_email
    Person.where.not(id: self.id).each do |recipient|
      Resque.enqueue(PersonDestroyed, self.full_name, recipient.id)
    end
  end
  
end
