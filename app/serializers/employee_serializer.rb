class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :employeeNo, :role, :issues


  def issues
    self.object.issues
  end
end
