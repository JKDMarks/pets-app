class OwnersController < ApplicationController
  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])
    @owner.assign_attributes(owner_params)
    if @owner.valid?
      @owner.save
      flash[:notice] = "Owner successfully edited"
      redirect_to @owner
    else
      flash[:notice] = @owner.errors.full_messages
      render :edit
    end
  end

  def index
    @owners = Owner.all
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.valid?
      @owner.save
      flash[:notice] = "Owner successfully created"
      redirect_to @owner
    else
      flash[:notice] = @owner.errors.full_messages
      render :new
    end
  end

  def show
    @owner = Owner.find(params[:id])
    @pets = @owner.pets
  end

  def destroy
    @owner = Owner.find(params[:id])
    @owner.destroy
    redirect_to owners_path
  end

  private

  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :age, :email)
  end
end
