class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def sorted
    @sorted = Dog.sorted_dogs
  end

  def show
    @dog = Dog.find(params[:id])
  end





end
