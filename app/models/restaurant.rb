class Restaurant < ApplicationRecord
  validates :name, :address, presence: true
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  has_many :reviews, dependent: :destroy
end
