class CartsController < ApplicationController
  def show
    get_cart
    @total_price = @cart.total_price
  end

  def add_item
    get_cart
    @cart.items << Item.find(params[:id])

    flash.now[:notice] = "Item added to your cart"
    redirect_to items_path
  end

  def remove_item
    get_cart
    @cart.items.delete(Item.find(params[:id]))
    redirect_to cart_show_path
  end

  private

  def get_cart
    if user_signed_in? && !current_user.cart.nil?
      @cart = current_user.cart
      session[:cart_id] = current_user.cart.id
    else
      @cart = current_cart
    end
  end

end
