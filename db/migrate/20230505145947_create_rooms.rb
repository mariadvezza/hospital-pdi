class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :type
      t.references :block, null: false, foreign_key: true
      t.boolean :unavailable

      t.timestamps
    end
  end
end
