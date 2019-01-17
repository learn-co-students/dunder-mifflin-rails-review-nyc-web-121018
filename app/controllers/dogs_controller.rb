class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    @sorted_dogs = @dogs.sort_by{|dog| dog.employees.length}.reverse
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def sorted
    @dogs = Dog.all
    @sorted_dogs = @dogs.sort_by{|dog| dog.employees.length}.reverse
  end

end
