class AddCounterInProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :counter, :integer
  end
end
