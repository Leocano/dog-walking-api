class DogWalkingsController < ApplicationController
  def index
    render json: DogWalking.all
  end

  def show
    @dog_walking = DogWalking.find(params[:id])
    render json: @dog_walking
  end

  def create
    @dog_walking = DogWalking.new(dog_walking_params)
    @pets = Pet.find(params[:pet_ids])
    @dog_walking.pets << @pets
    @dog_walking.save
    render json: @dog_walking
  end

  private
    def dog_walking_params
      params.require(:dog_walking).permit(:scheduled_date, :price, :duration, :latitude, 
                                          :longitude, :start_time, :finish_time)
    end
end
