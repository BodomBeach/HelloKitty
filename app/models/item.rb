class Item < ApplicationRecord
  validates :price, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0 }
  validates :title, :description, :image_url, presence: true
  has_and_belongs_to_many :carts
end
