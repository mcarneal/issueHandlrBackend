class IssueSerializer < ActiveModel::Serializer
  attributes :id, :description, :title, :category, :employees, :assignments, :status


  def employees
    self.object.employees
  end

  def assignments
    self.object.assignments
  end

end
