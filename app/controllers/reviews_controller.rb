class ReviewsController < ApplicationController
before_action :set_pet, only: %i[new create]
  def create
    @review = Review.new(review_params)
    @review.pet = @pet
    @review.save
    redirect_to pet_path(@pet)
  end

  def new
    @review = Review.new
  end

  def index
    @pet = Pet.find(params[:pet_id])
    @reviews = Review.where(pet_id: @pet.reviews)


  end

  private

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  # def show
  #   @review = Review.find
  # end


end
