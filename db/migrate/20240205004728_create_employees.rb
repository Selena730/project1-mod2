class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :salary
      t.boolean :full_time

      t.timestamps
    end
  end
end
