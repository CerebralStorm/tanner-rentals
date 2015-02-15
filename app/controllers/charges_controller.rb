class ChargesController < ApplicationController
  layout "blank"

  def new
    @bill = Bill.find(params[:bill_id])
  end

  def create
    @bill = Bill.find(params[:bill_id])
    @amount = @bill.balance_in_cents

    customer = Stripe::Customer.create(
      :email => current_user.email,
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Tenant',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path(bill_id: @bill.id)
  end
end
