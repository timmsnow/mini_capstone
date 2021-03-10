class RenameCounterInProducts < ActiveRecord::Migration[6.1]
  def change
    rename_column :products, :counter, :quantity
  end
end
