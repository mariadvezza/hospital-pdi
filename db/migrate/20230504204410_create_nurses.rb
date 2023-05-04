class CreateNurses < ActiveRecord::Migration[6.1]
  def change
    create_table :nurses do |t|
      t.string, :name
      t.string, :position
      t.boolean, :registered
      t.integer :ssn

      t.timestamps
    end
  end
end
