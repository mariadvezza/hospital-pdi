class CreateUndergos < ActiveRecord::Migration[6.1]
  def change
    create_table :undergos do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :procedure, null: false, foreign_key: true
      t.references :stay, null: false, foreign_key: true
      t.datetime :date
      t.references :physician, null: false, foreign_key: true
      t.references :nurse, null: true, foreign_key: true

      t.timestamps
    end
  end
end
