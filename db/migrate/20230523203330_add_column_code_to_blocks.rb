class AddColumnCodeToBlocks < ActiveRecord::Migration[6.1]
  def change
    add_column :blocks, :code, :integer
  end
end
