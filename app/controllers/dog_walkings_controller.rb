class DogWalkingsController < ApplicationController
  def index
    render json: DogWalking.all, include: :pets
  end

  def show
    @dog_walking = DogWalking.find(params[:id])
    render json: @dog_walking, include: :pets, methods: :real_duration
  end

  def create
    @dog_walking = DogWalking.new(dog_walking_params)
    @pets = Pet.find(params[:pet_ids])
    @dog_walking.pets << @pets
    @dog_walking.save
    render json: @dog_walking, include: :pets
  end

  def start_walk
    @dog_walking = DogWalking.find(params[:dog_walking_id])
    @dog_walking.dog_walking_status_id = 2
    @dog_walking.start_time = Time.now
    @dog_walking.save
    render json: @dog_walking
  end

  private
    def dog_walking_params
      params.require(:dog_walking).permit(:scheduled_date, :price, :duration, :latitude, 
                                          :longitude, :start_time, :finish_time)
    end
end
