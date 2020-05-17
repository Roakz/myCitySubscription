class AddUserToAuthenticationLocals < ActiveRecord::Migration[6.0]
  def change
    add_reference :authentication_locals, :user, null: false, foreign_key: true
  end
end
