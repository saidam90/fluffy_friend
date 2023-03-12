class ReviewsController < ApplicationController
before_action :set_pet, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.pet = @pet

    if @review.rating < 1 || @review.rating > 5
      "Should be between 1 to 5"
    else
      @review.save
    end
    redirect_to pet_path(@pet)
  end

  def index
    @pet = Pet.find(params[:pet_id])
    @reviews = Review.where(pet_id: @pet.reviews)
  end

  def show
    @review = Review.find
  end

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
