class PetsController < ApplicationController
  def index
    # @pets = Pet.all
    # @reviews = Review.all
    if params[:query].present?
      sql_query = "name ILIKE :query OR category ILIKE :query"
      @pets = Pet.where(sql_query, query: "%#{params[:query]}%")
    else
      @pets = Pet.all
    end
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = current_user.pets.build(pet_params)

    if @pet.save
      flash[:notice] = "#{@pet.name} added successfully."
      redirect_to pet_path(@pet)
    else
      render 'new'
    end
  end

  def show
    @pet = Pet.find(params[:id])
    @marker = [{
      lat: @pet.latitude,
      lng: @pet.longitude,
      info_window: render_to_string(partial: "info_window", locals: { pet: @pet })
    }]
  end

  private

  def pet_params
    params.require(:pet).permit(:category, :breed, :name, :age, :location, photos: [])
  end
end
