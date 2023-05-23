class AddIndexToTraining < ActiveRecord::Migration[6.1]
  def change
    add_index :trainings, [:physician_id, :procedure_id], unique: true
  end
end
