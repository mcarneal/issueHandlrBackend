class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :description, :title, :issue_id, :comments, :employee_username

  def employee_username
    self.object.employee.username
  end

end
