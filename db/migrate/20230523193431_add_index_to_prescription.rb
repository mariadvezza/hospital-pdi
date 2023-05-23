class AddIndexToPrescription < ActiveRecord::Migration[6.1]
  def change
    add_index :prescriptions, [:patient_id, :physician_id, :medication_id, :date], unique: true, name: 'unique_prescriptions'
  end
end
