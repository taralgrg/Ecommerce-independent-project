class ChargesController < ApplicationController

    Stripe.api_key = ENV['sk_test_1kTxBNShxMhrXMQh6ngWPp8h']
    def new
  end

  def create
    # Amount in cents

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    current_order.order_items.each do |item|
      charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => Integer(item.product.price*100*item.quantity),
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )
  end
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
