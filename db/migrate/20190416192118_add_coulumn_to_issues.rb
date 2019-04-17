class AddCoulumnToIssues < ActiveRecord::Migration[5.2]
  def change
    add_column :issues, :status, :float
  end
end
