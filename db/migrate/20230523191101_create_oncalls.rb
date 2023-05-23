class CreateOncalls < ActiveRecord::Migration[6.1]
  def change
    create_table :oncalls do |t|
      t.references :nurse, null: false, foreign_key: true
      t.references :block, null: false, foreign_key: true
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
