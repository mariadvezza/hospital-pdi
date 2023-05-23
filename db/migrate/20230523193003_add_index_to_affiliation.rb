class AddIndexToAffiliation < ActiveRecord::Migration[6.1]
  def change
    add_index :affiliations, [:physician_id, :department_id], unique: true
  end
end
