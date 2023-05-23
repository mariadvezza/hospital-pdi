class CreateStays < ActiveRecord::Migration[6.1]
  def change
    create_table :stays do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
