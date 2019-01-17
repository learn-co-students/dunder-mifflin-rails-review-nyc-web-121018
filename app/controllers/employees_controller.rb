class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
    if !!flash[:data]
      @employee = Employee.new(flash[:data])
    else
      @employee = Employee.new
    end
    @dogs = Dog.all
  end

  def create
    # byebug
    # @employee = Employee.create(employee_params)
    # redirect_to @employee
    @employee = Employee.new(employee_params)

    if @employee.valid?
      @employee.save
      redirect_to @employee
    else
      flash[:errors]= @employee.errors.full_messages
      flash[:data] = employee_params
      # byebug
      redirect_to new_employee_path
    end
  end

  def edit
    @dogs = Dog.all
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    if @employee.update(employee_params)
      redirect_to @employee
    else
      flash[:errors]= @employee.errors.full_messages
      flash[:data] = employee_params
      # byebug
      redirect_to edit_employee_path
    end
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :office, :dog_id, :title)
  end
end
