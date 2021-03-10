class ChangeUrlToBeStringInImage < ActiveRecord::Migration[6.1]
  def change
    change_column :images, :url, :string
  end
end
