module ApplicationHelper

  def current_cart

    if !session[:user_id]
      assign_cart
    end

    if !session[:cart_id].nil?
      Cart.find(session[:cart_id])
    else
      cart = Cart.new
      cart.save
      session[:cart_id] = cart.id
      cart
    end
  end

  def assign_cart
    if user_signed_in?
      session[:user_id] = current_user.id
      current_user.cart = current_cart
      puts "assigned cart to user", current_user.id
    end
  end
end
