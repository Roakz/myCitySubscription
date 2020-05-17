class AddOrganisationToVolunteers < ActiveRecord::Migration[6.0]
  def change
    add_reference :volunteers, :organisation, null: false, foreign_key: true
  end
end
