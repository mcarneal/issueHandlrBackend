class Issue < ApplicationRecord
  has_many :assignments
  has_many :employees, through: :assignments

  before_destroy :destroy_assignments

  private

  def destroy_assignments
    self.assignments.destroy_all
  end


end
