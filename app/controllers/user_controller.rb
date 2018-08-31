class UserController < ApplicationController

  before_action :authenticate_user!

  def profile
    @orders = current_user.orders
  end

end
