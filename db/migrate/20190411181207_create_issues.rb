class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.string :description
      t.string :title
      t.string :category

      t.timestamps
    end
  end
end
