require 'bcrypt'

class User < ActiveRecord::Base
  validates :username, presence: true, length: { maximum: 50 }
  # users.password_hash in the database is a :string
  has_secure_password
end
