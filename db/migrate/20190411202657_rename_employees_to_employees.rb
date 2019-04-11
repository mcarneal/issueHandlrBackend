class RenameEmployeesToEmployees < ActiveRecord::Migration[5.2]
  def change
    rename_column :employees, :emloyeeNo, :employeeNo
  end
end
