class OrdersController < ApplicationController

  def new
  	if current_user.nil?
     redirect_to new_user_registration_path
     flash[:notice] = "Please sign up to buy cats"
    else
	  redirect_to new_charge_path
    end
  end



  def complete
  	@order = Order.new(user_id: current_user.id)
    @order.items = current_user.cart.items.each do |item|
    	@order.items << item
    end
    @order.save

   flash[:notice] = "Thank you for your purchase"
   redirect_to home_path

    current_user.cart.carts_items.destroy_all

    flash[:notice] = "Thank you for your purchase"
    redirect_to home_path

  end

end
