class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  enum :role, [ :guest, :user, :admin ]
end
