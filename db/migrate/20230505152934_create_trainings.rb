class CreateTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :trainings do |t|
      t.references :physician, null: false, foreign_key: true
      t.references :procedure, null: false, foreign_key: true
      t.datetime :certification_date
      t.datetime :certification_expires_at

      t.timestamps
    end
  end
end
