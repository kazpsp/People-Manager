require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = FactoryGirl.create(:person)
  end
  
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post :create, person: { bio: @person.bio, birthdate: @person.birthdate, email: "test@test.com", first_name: @person.first_name, gender: @person.gender, job: @person.job, last_name: @person.last_name, picture: @person.picture }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should show person" do
    get :show, id: @person.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person.id
    assert_response :success
  end

  test "should update person" do
    patch :update, id: @person.id, person: { bio: @person.bio, birthdate: @person.birthdate, email: @person.email, first_name: @person.first_name, gender: @person.gender, job: @person.job, last_name: @person.last_name, picture: @person.picture }
    assert_redirected_to person_path(assigns(:person))
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person.id
    end

    assert_redirected_to people_path
  end
end
