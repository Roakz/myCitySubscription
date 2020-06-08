require 'bcrypt'

class User < ApplicationRecord

    include BCrypt

    has_one :authentication_local, dependent: :destroy

    def self.hash_password(unhashed_password)
      hashed_password = BCrypt::Password.create(unhashed_password)
      if hashed_password
        return hashed_password
      else   
        return false
      end
    end

    def self.authenticate(user_id, password_attempt)
      if @user = self.where(:id => user_id )[0]
        @authentication_local = Authentication::Local.where(:user_id => @user.id)[0]
        user_password = BCrypt::Password.new(@authentication_local.password_digest)
        return user_password == password_attempt
      else    
        false
      end
    end
end
