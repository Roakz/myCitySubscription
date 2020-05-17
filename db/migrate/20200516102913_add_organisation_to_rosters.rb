class AddOrganisationToRosters < ActiveRecord::Migration[6.0]
  def change
    add_reference :rosters, :organisation, null: false, foreign_key: true
  end
end
