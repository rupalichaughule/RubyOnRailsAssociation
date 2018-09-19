class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :kind
      t.boolean :available

      t.timestamps
    end
  end
end
