class OrdersController < ApplicationController

  def new
	redirect_to new_charge_path
  end



  def complete
  	@order = Order.new(user_id: current_user.id)
    current_user.cart.items.each do |item|
    	@order.items << item
    end
    @order.save


  end

end