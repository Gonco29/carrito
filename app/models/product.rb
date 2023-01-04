class Product < ApplicationRecord
  # Método Lamba:
  scope :show_products, -> {order(:name).order(:price)}
  has_many :line_items
end
