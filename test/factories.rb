FactoryGirl.define do
  factory :person do
    first_name "foo"
    last_name "bar"
    email { "#{first_name}@example.com"}
    birthdate "1990-08-30"
    job "test"
    gender "M"
    bio "this is a test bio"
  end
end