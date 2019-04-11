class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :description, :title, :issue_id, :comments
end
