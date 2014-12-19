class CreateVariations < ActiveRecord::Migration
  def change
    create_table :variations do |t|
      t.integer :price
      t.string :size
      t.string :colour

      t.timestamps
    end
  end
end
