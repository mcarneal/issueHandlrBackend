class AddUsernameToEmployeeTable < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :username, :string
  end
end
