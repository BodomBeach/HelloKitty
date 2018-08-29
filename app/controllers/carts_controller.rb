class CartsController < ApplicationController
  def show
    @cart = current_cart
    @total_price = total_price
  end

  def add_item
    @cart = current_cart
    @cart << Item.find(params[:id])
    flash.now[:notice] = "Item added to your cart"
    items_path
  end

  def total_price
    @cart = current_cart
    @cart.items.to_a.sum { |item| item.price }
  end

  private

  def current_cart
    if Cart.find_by user_id: current_user.id
      Cart.find_by user_id: current_user.id
    else
      Cart.create(user_id: current_user.id)
    end
  end

end
