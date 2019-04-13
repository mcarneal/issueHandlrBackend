class Employee < ApplicationRecord
  has_many :assignments
  has_many :issues, through: :assignments
  has_secure_password

  validates :username, uniqueness:{case_sensitive: false}



end

Employee.create({name: 'a', employeeNo: 2000, role: "boss", username: 'a', password: 'a'})
