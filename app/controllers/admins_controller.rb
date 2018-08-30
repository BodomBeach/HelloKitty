class AdminsController < ApplicationController
  def dashboard
    @orders =  Order.all.sort_by {|order| order.created_at}
  end
end
