class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :account, presence: true

  has_secure_password
end