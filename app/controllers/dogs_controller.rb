class DogsController < ApplicationController
  def index
    @dog = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

end
