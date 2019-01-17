class DogsController < ApplicationController



def index
    @dogs = Dog.all
    @employees = Employee.all
end

def show
    @dog = Dog.find(params[:id])
end

end # end Dogs controller
