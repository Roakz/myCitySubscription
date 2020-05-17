class AddUserToVolunteers < ActiveRecord::Migration[6.0]
  def change
    add_reference :volunteers, :user, null: false, foreign_key: true
  end
end
