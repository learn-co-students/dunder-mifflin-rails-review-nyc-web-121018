class EmployeesController < ApplicationController

  def index
    @employee = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    if !!flash[:data]
    @employee = Employee.new(flash[:data])
    else
     @employee = Employee.new
    end
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.save
    if @employee.valid?
      redirect_to @employee
    else

      flash[:errors] = @employee.errors.full_messages
      flash[:data] = employee_params
      redirect_to new_employee_path

    end
  end

  def edit
    @employee = Employee.find(params[:id])



  end

  def update

    @employee = Employee.find(params[:id])
    @employee.update(employee_params)
    redirect_to employee_path(@employee)
  end

  private

  def employee_params

    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
  end

end
