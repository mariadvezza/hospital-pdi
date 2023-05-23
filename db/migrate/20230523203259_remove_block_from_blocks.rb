class RemoveBlockFromBlocks < ActiveRecord::Migration[6.1]
  def change
    remove_column :blocks, :block, :integer
  end
end
