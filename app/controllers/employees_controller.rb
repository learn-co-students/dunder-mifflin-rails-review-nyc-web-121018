class EmployeesController < ApplicationController

  def index
      @employees = Employee.all
          @dogs = Dog.all
  end

  def show
      @employee = Employee.find(params[:id])
  end
  def new
    @employee = Employee.new

  end

  def create
    @employee = Employee.create(employee_params)
    if @employee.valid?
      @employee.save
#right
    redirect_to employee_path(@employee)
#wrong
  else
    redirect_to new_employee_path
  end
  end

  def edit
          @employee = Employee.find(employee_params[:id])
  end


def update
  @employee = Employee.find(params[:id])
  @employee.update(employee_params)
  # validates
  if @employee.valid?
    redirect_to employee_path(@employee)
  else
    render :edit
  end

end

private


def employee_params

params.require(:employee).permit(:first_name, :last_name,:alias, :title, :office, :dog_id)
end

end # end employees controller
