class DogWalkingsController < ApplicationController
  def index
    render json: DogWalking.all
  end
end
