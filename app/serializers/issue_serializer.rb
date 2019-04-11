class IssueSerializer < ActiveModel::Serializer
  attributes :id, :description, :title, :category, :employees


  def employees
    self.object.employees
  end

end
