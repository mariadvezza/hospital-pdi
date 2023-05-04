class CreateBlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :blocks do |t|
      t.integer :floor
      t.integer :block

      t.timestamps
    end
  end
end
