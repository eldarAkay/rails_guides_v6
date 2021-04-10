class ChangeProducts < ActiveRecord::Migration[6.1]
  change_column :products, :part_number, :text
end
