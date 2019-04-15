class Employee < ApplicationRecord
  has_many :assignments
  has_many :issues, through: :assignments
  has_secure_password

  validates :username, uniqueness:{case_sensitive: false}



end
