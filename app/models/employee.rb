class Employee < ApplicationRecord
  has_many :assignments
  has_many :issues, through: :assignments
end
