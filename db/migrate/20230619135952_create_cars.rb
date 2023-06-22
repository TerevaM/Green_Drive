class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :number_of_seats
      t.references :user, null: false, foreign_key: true
      t.integer :rate
      t.string :brand
      t.string :color
      t.integer :year
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
