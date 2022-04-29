class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
  end

  def create
  	@order = Order.create(order_params)

    if @order.save
      redirect_to @order
    else
      render :new, status: :unprocessable_entity
    end
  end


  def order_params
    params.require(:order).permit(:totalPrice, :state)
  end
end
