class AddIndexToUndergo < ActiveRecord::Migration[6.1]
  def change
    add_index :undergos, [:patient_id, :procedure_id, :stay_id, :date], unique: true, name: 'unique_undergoes'
  end
end
