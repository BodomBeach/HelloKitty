class UserController < ApplicationController
  def profile
    @cart = current_cart
  end
end
