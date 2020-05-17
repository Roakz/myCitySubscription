require 'bcrypt'

class User < ApplicationRecord

    include BCrypt

    has_one :authentication_local

    def self.hash_password(unhashed_password)
      hashed_password = BCrypt::Password.create(unhashed_password)
    #   if hashed_password
    #     return hashed_password
    #   else   
        return false
    #   end
    end
end
