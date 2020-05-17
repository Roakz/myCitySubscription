class AddRosterToShifts < ActiveRecord::Migration[6.0]
  def change
    add_reference :shifts, :roster, null: false, foreign_key: true
  end
end
