class CreateDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :departments do |t|
      t.string :name
      t.references :physician, null: false, foreign_key: true

      t.timestamps
    end
  end
end
