class LineItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: :create

  def create
    product_new = Product.find(params[:product_id])
    # @line_item = LineItem.find_by(product_id: product_new.id)
    @line_item = LineItem.find_by_product_id(product_new.id)
    if @line_item
      @line_item.quantity += 1
    else
      @line_item = LineItem.new(price: product_new.price, product_id: product_new.id, cart_id: @cart.id)
    end
    @line_item.save
          # PARA CREARSE NECESITA:
    #   precio a traves del boton... de Product
    #   quantity.. x default se crea en 1
    #   product_id  a traves del boton... de Product\
    #   cart_id de @cart
    #   order_id nill
  end
end
