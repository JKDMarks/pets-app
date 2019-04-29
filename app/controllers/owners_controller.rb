class OwnersController < ApplicationController
  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])
    @owner.update(owner_params)
  end

  def index
    @owners = Owner.all
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.create(owner_params)
    redirect_to @owner
  end

  def show
    @owner = Owner.find(params[:id])
    @pets = @owner.pets
  end

  private

  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :age, :email)
  end
end
