class CreatePhysicians < ActiveRecord::Migration[6.1]
  def change
    create_table :physicians do |t|
      t.string, :name
      t.string, :position
      t.integer :ssn

      t.timestamps
    end
  end
end
