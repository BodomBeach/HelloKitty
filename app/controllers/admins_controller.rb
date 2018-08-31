class AdminsController < ApplicationController

  before_action :authenticate_user!

  def dashboard
    @orders =  Order.all.sort_by {|order| order.created_at}
    if !current_user.admin?
      redirect_to home_path
      flash.now[:notice] = "You are not an admin, go away"
    end
  end

end
