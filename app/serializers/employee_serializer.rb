class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :employeeNo, :role
end
