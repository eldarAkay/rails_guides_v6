class RemovePriceFromProducts < ActiveRecord::Migration[6.1]
  change_table :products do |t|
    t.remove :price
  end
end
