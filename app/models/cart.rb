class Cart < ApplicationRecord
  belongs_to :user, optional: true
  has_and_belongs_to_many :items

  def total_price
    self.items.to_a.sum { |item| item.price }
  end
end
