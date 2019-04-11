class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :description
      t.string :title
      t.belongs_to :employee, foreign_key: true
      t.belongs_to :issue, foreign_key: true
      t.string :comments

      t.timestamps
    end
  end
end
