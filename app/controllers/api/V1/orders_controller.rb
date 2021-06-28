class Api::V1::OrdersController < ApplicationController
  before_action :set_order, only: %i[ show update destroy ]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
    render json: OrderSerializer.new(@orders)
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    if @order.save
      render json: OrderSerializer.new(@order)
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    if @order.update(order_params)
      render json: OrderSerializer.new(@order)
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:order_type, :restaurant_id, :total, :fulfilled, :order_items => [:id, :type, :count, :attributes => [:name, :price, :section_id]])
    end
end
