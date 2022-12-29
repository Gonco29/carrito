class Product < ApplicationRecord
  # Método Lamba:
  scope :show_products, -> {order(:name).order(:price)}
end
