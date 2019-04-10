class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :year
      t.string :colour
      t.integer :mileage
      t.references :models
      t.references :make

      t.timestamps
    end
  end
end
