class UserController < ApplicationController
  def profile
    @orders = current_user.orders
  end
end
