class AddIndexToOncall < ActiveRecord::Migration[6.1]
  def change
    add_index :oncalls, [:nurse_id, :block_id], unique: true
  end
end
