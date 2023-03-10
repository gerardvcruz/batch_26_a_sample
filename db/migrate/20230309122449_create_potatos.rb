class CreatePotatos < ActiveRecord::Migration[7.0]
  def change
    create_table :potatos do |t|
      t.integer :kg
      t.string :province
      t.decimal :price

      t.timestamps
    end
  end
end
