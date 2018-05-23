class Write < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :heading, presence: true
  validates :small_heading, presence: true
  validates :content, presence: true
  validates :title, presence: true
  validates :description, presence: true

  belongs_to :user
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: 'user'
end
