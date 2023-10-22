class PeopleController < ApplicationController
  before_action :set_person, only: %i[ show edit update destroy ]

  # GET /people
  def index
    @people = Person.all
    render inertia: 'People', props: {
      people: @people,
      user: current_user
    }
  end

  # GET /people/1
  def show
    render inertia: 'Person', props: {
      # people: @people,
      person: Person.find(params[:id]) 
      # user: current_user
    }
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to @person, notice: "Person was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /people/1
  def update
    if @person.update(person_params)
      redirect_to @person, notice: "Person was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy!
    redirect_to people_url, notice: "Person was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_params
      params.require(:person).permit(:first_name, :last_name)
    end
end
