class AddSsnIndexToPatients < ActiveRecord::Migration[6.1]
  def change
    add_index :patients, :ssn, unique: true
  end
end
