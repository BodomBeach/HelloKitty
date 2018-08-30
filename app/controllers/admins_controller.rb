class AdminsController < ApplicationController
  def dashboard
    @orders =  Order.all
  end
end
