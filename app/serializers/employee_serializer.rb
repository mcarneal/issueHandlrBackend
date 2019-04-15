class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :employeeNo, :role, :issues, :username, :password

end
