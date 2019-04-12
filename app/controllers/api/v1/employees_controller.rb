class Api::V1::EmployeesController < ApplicationController

  def index
    @employees = Employee.all
    render json: @employees
  end

  def show
    @employee = Employee.find(params[:id])
    render json: @employee
  end

  def create
    @employee = Employee.create(employee_params)
    byebug
    if @employee.valid?
      render json: { employee: EmployeeSerializer.new(@employee) }, status: :created
    else
      render json: { error: 'failed to create employee' }, status: :not_acceptable
    end
  end

  private
  def employee_params
    params.require(:employee).permit(:username, :password, :name, :employeeNo, :role)
  end

end
