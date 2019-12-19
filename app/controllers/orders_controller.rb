class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      flash[:success] = "Your order has been recorded!"
      redirect_to @order
    else
      render 'new'
    end
  end

  def new
    @order = Order.new
  end

  def list
    @orders = Order.order(:request)
  end

  private

    def order_params
      params.require(:order).permit(:name, :request, :comments)
    end
end