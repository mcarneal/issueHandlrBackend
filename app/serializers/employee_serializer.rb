class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :employeeNo, :role, :issues, :username, :password


  def issues
    self.object.issues
  end
end
