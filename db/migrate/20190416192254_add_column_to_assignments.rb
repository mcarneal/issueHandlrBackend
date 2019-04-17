class AddColumnToAssignments < ActiveRecord::Migration[5.2]
  def change
    add_column :assignments, :completed, :boolean
  end
end
