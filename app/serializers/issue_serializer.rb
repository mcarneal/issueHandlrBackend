class IssueSerializer < ActiveModel::Serializer
  attributes :id, :description, :title, :category, :employees, :assignments


  def employees
    self.object.employees
  end

  def assignments
    self.object.assignments
  end

end
