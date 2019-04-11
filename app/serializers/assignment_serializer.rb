class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :description, :title, :issue_id, :comments, :employee_id
end
