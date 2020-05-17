class CreateRosters < ActiveRecord::Migration[6.0]
  def change
    create_table :rosters do |t|
      t.string :title
      t.date :start_date
      t.date :finish_date
      
      t.timestamps
    end
  end
end
