class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :description, :title, :issue_id, :comments, :employee_username, :completed, :employee_name, :employee_id

  def employee_username
    self.object.employee.username
  end

  def employee_name
    self.object.employee.name
  end

  def employee_id
    self.object.employee.id 
  end 

end
