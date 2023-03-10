class CreateRice < ActiveRecord::Migration[7.0]
  def change
    create_table :rice do |t|
      t.integer :kg
      t.string :brand
      t.decimal :price

      t.timestamps
    end
  end
end
