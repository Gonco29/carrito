class PagesController < ApplicationController
  def home
    @products = Product.show_products
    # @products = Product.all       ----> para evitar volver a usar la misma instrucción

  end
end
