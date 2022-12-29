class PagesController < ApplicationController
  def home
    @products = Product.show_products
  end
end
