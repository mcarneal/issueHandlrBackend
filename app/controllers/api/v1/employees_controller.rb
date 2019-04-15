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
    if @employee.valid?
      token = JWT.encode({employee_id: @employee.id}, ENV['SECRET_WORD'])
      render json: { username: @employee.username, token: token, id: @employee.id}, status: :created
    else
      render json: { error: 'failed to create employee' }, status: :not_acceptable
    end
  end

  def login
    @employee = Employee.find_by(username: employee_params['username'])
    enc = @employee.password_digest
    sec = employee_params['password']
    if BCrypt::Password.new(enc) == sec
      token = JWT.encode({employee_id: @employee.id}, ENV['SECRET_WORD'])
      render json: { username: @employee.username, token: token, id: @employee.id}, status: :created
    else
        render json: { error: 'failed to create employee' }, status: :not_acceptable
    end
  end

  def get_employee
    token = request.headers["authorization"]
    id = JWT.decode(token, ENV['SECRET_WORD'])[0]["employee_id"]
    @employee = Employee.find(id)
    if @employee.valid?
      token = JWT.encode({employee_id: @employee.id}, ENV['SECRET_WORD'])
      render json: { username: @employee.username, id: @employee.id}, status: :created
    end
  end

  private
  def employee_params
    params.require(:employee).permit(:username, :password, :name, :employeeNo, :role)
  end

end
