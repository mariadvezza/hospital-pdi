class CreatePrescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriptions do |t|
      t.references :physician, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.references :medication, null: false, foreign_key: true
      t.datetime :date
      t.references :appointment, null: true, foreign_key: true
      t.string :dose

      t.timestamps
    end
  end
end
