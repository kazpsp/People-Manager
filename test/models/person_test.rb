require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test "Create person only with the required fields" do
    person = FactoryGirl.create(:person)
    assert person.valid?
  end
  
  test "Invalid without first_name" do
    person = FactoryGirl.build(:person, first_name: nil, last_name: "test")
    assert_not person.valid?
  end
  
  test "Invalid without last_name" do
    person = FactoryGirl.build(:person, first_name: "tets", last_name: nil)
    assert_not person.valid?
  end
  
  test "Invalid without birthdate" do
    person = FactoryGirl.build(:person, birthdate: nil)
    assert_not person.valid?
  end
  
  test "Invalid with future birthdate" do
    person = FactoryGirl.build(:person, birthdate: "2020-08-30")
    assert_not person.valid?
  end
  
  test "Invalid with duplicate emails" do
     person = FactoryGirl.create(:person, email: "test@example.com")
     assert person.valid?
     person = FactoryGirl.build(:person, email: "test@example.com")
     assert_not person.valid?
  end
  
  test "Invalid with incorrect Gender" do
    person = FactoryGirl.build(:person, gender: "H")
    assert_not person.valid?
  end
  
  test "invalid with incorrect email format" do
    person = FactoryGirl.build(:person, email: "testtest.com") 
    assert_not person.valid?
  end
  
  test "invalid if email has more than 254 characters" do
     person = FactoryGirl.build(:person, email: "#{10.times.map { [*'0'..'9', *'a'..'z'].sample }.join}@#{10.times.map { [*'0'..'9', *'a'..'z'].sample }.join}.#{5.times.map { [*'0'..'9', *'a'..'z'].sample }.join}")
     assert person.valid?
     person = FactoryGirl.build(:person, email: "#{200.times.map { [*'0'..'9', *'a'..'z'].sample }.join}@#{200.times.map { [*'0'..'9', *'a'..'z'].sample }.join}.#{5.times.map { [*'0'..'9', *'a'..'z'].sample }.join}")
     assert_not person.valid?
  end
  
end
