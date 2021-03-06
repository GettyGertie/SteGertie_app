class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: {maximum: 250}
has_secure_password
end
