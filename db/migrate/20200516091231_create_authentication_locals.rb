class CreateAuthenticationLocals < ActiveRecord::Migration[6.0]
  def change
    create_table :authentication_locals do |t|
      t.string :email
      t.string :password_digest
      # t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
