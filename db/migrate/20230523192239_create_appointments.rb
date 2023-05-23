class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :nurse, null: true, foreign_key: true
      t.references :physician, null: false, foreign_key: true
      t.datetime :start
      t.datetime :end
      t.string :examination_room

      t.timestamps
    end
  end
end
