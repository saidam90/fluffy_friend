class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pets_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  private

  def list_params
    params.require(:pet).permit(:category, :breed, :name, :location)
  end
end
