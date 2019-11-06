class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    @sorted_dogs = @dogs.sort_by {|dog| dog.employee_count}
  end

  def show
    @dog = Dog.find(params[:id])
    @employees = @dog.employees.all
  end

  private

  def dog_params(*args)
    params.require(:dog).permit(*args)
  end
end
