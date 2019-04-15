class IssueSerializer < ActiveModel::Serializer
  attributes :id, :description, :title, :category, :employees, :assignments

end
