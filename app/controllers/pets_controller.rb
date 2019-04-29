class PetsController < ApplicationController
  def edit
    @pet = Pet.find(params[:id])
    @owners = Owner.all
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to @pet
  end

  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
    @owners = Owner.all
  end

  def create
    @pet = Pet.create(pet_params)
    redirect_to @pet
  end

  def show
    @pet = Pet.find(params[:id])
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :owner_id)
  end
end
