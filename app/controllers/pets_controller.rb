class PetsController < ApplicationController
  def index
    @pets = Pet.all
    @reviews = Review.all
  end

  def show
    @pet = Pet.find(params[:id])
    @reviews = Review.where(pet_id: @pet.reviews)
    @marker = [{
      lat: @pet.latitude,
      lng: @pet.longitude,
      info_window: render_to_string(partial: "info_window", locals: {pet: @pet})
    }]
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pets_path, notice: " #{@pet.name} added successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def show
    @pet = Pet.find(params[:id])
    @marker = [{
      lat: @pet.latitude,
      lng: @pet.longitude,
      info_window: render_to_string(partial: "info_window", locals: {pet: @pet})
    }]
  end

  
  private

  def pet_params
    params.require(:pet).permit(:category, :breed, :name, :age, :location, photos: [])
  end
end
