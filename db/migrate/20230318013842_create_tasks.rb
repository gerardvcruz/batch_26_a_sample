class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer :category_id
      t.string :name
      t.datetime :due_date
      t.string :priority

      t.timestamps
    end
  end
end
