class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name, presence: true
  validates :email, presence: true
  validates :account, presence: true

  has_many :writes
  has_many :favorites
  has_many :favorite_writes, through: :favorites, source: 'write'
  has_secure_password

end
