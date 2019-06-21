class Api::V1::AuthController < ApplicationController

  skip_before_action :authorized, only: [:create], raise: false

  def create
    @employee = Employee.find_by(username: employee_login_params[:username])
    #Employee#authenticate comes from BCrypt
    if @employee && @employee.authenticate(employee_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ employee_id: @employee.id })
      render json: { employee: EmployeeSerializer.new(@employee), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end

  private

  def employee_login_params
    # params { employee: {username: 'Chandler Bing', password: 'hi' } }
    params.require(:employee).permit(:username, :password)
  end
end
