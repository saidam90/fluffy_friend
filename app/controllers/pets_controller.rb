class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(list_params)
    @pet.user = current_user
    if @pet.save
      redirect_to pets_path, notice: " #{@pet.name} added successfully."

    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  # end

  # def update
  #   if @pet.update(list_params)
  #     redirect_to pets_path, notice: "Pet updated successfully."
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  private

  def list_params
    params.require(:pet).permit(:category, :species, :breed, :name, :age, :location)
  end
end
