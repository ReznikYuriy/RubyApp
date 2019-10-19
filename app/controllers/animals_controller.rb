class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end
  def show
    @animal = Animal.find(params[:id])
  end
  def new
    @animal = Animal.new
  end
  def create
    @animal = Animal.new(params.require(:animal).permit(:name, :animal_type, :avatar))
    @animal.save
    /redirect_to @animals/
    redirect_to :action => "index"
  end
  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy

    redirect_to :action => "index"
  end
end

