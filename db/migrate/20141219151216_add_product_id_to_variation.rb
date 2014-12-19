class AddProductIdToVariation < ActiveRecord::Migration
  def change
    add_column :variations, :product_id, :integer
  end
end
