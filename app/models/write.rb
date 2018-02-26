class Write < ApplicationRecord
  validates :heading, presence: true,length:{in: 28..36}
  validates :small_heading, presence: true{in: 10..20}
  validates :content, presence: true

  mount_uploader :image, ImageUploder
end
