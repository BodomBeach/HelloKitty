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
    current_user.cart.items.each do |item|
    	@order.items << item
    end
    @order.save


  end

end