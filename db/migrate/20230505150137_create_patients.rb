class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.integer :ssn
      t.string :name
      t.string :address
      t.string :phone
      t.integer :insurance_id
      t.references :physician, null: false, foreign_key: true

      t.timestamps
    end
  end
end
