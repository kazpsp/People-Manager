class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]
  
  # Public: People index action
  #
  # Returns all people 
  def index
    @people = Person.all
  end

  # Public: Person show action
  #
  # Returns a person
  def show
  end

  # Public: New person action
  #
  # Returns instance of new person
  def new
    @person = Person.new
  end

  # Public: Edit person action
  #
  # Returns instance of person
  def edit
  end
  
  # Public: Create person action 
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # Public: Update person action
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # Public: Destroy person action
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:first_name, :last_name, :email, :job, :bio, :gender, :birthdate, :picture)
    end
end
