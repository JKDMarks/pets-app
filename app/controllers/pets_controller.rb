class PetsController < ApplicationController
  def edit
    @pet = Pet.find(params[:id])
    @owners = Owner.all
  end

  def update
    @owners = Owner.all
    @pet = Pet.find(params[:id])
    @pet.assign_attributes(pet_params)
    if @pet.valid?
      @pet.save
      flash[:notice] = "Pet successfully edited"
      redirect_to @pet
    else
      flash[:notice] = @pet.errors.full_messages
      render :edit
    end
  end

  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
    @owners = Owner.all
  end

  def create
    @owners = Owner.all
    @pet = Pet.new(pet_params)
    if @pet.valid?
      @pet.save
      flash[:notice] = "Pet successfully created"
      redirect_to @pet
    else
      flash[:notice] = @pet.errors.full_messages
      render :new
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :owner_id)
  end
end
