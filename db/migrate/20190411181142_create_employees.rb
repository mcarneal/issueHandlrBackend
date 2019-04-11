class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :emloyeeNo
      t.string :role

      t.timestamps
    end
  end
end
