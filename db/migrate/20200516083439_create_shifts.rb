class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|
      t.string :title
      t.date :date
      t.datetime :start_time
      t.datetime :finish_time
      t.references :roster, null: false, foreign_key: true
      t.string :location
      t.boolean :cancellation
      t.string :assigned_volunteers
      t.string :training_requirements
      t.text :description

      t.timestamps
    end
  end
end
