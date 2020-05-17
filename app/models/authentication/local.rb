class Authentication::Local < ApplicationRecord
  belongs_to :user
  has_secure_password
end
