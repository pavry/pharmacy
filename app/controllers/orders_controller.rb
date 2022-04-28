class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
  end

  def create
  	@order = Order.new(params[:order])

    if @order.save
      redirect_to @order
    else
      render :new, status: :unprocessable_entity
    end
  end


end
