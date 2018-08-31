class ChargesController < ApplicationController

  def new
    get_cart
    @total = @cart.items.to_a.sum { |item| item.price }
    @pay = @total*100

  end


  def create

    # Amount in cents
    get_cart
    @amount = @cart.items.to_a.sum { |item| item.price }.to_i*100
    @amount_view = @cart.items.to_a.sum { |item| item.price }
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'eur'
    )

   p @cart
   p "=============================================="
   @cart.items.each do |item|
   p item.image_url
   end
   p "=============================================="


   UserMailer.order_email(params[:stripeEmail], @cart.items).deliver_now!
   UserMailer.admin_order_email(params[:stripeEmail],@amount_view).deliver_now!
   
  redirect_to order_complete_path

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end


  private

  def get_cart
    if user_signed_in? && !current_user.cart.nil?
      @cart = current_user.cart
      session[:cart_id] = current_user.cart.id
    else
      @cart = current_cart
    end
  end

end
