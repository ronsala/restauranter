class Api::V1::MenusController < ApplicationController
  before_action :set_menu, only: %i[ show edit update destroy ]

  # GET /menus or /menus.json
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menus = @restaurant.menus.first
    render json: MenuSerializer.new(@menus)
  end

  # GET /menus/1 or /menus/1.json
  def show
    render json: MenuSerializer.new(@menu) 
  end

  # GET /menus/new
  def new
    @menu = Menu.new
  end

  # POST /menus or /menus.json
  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      render json: MenuSerializer.new(@menu)
    else
      render json: @menu.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /menus/1 or /menus/1.json
  def update
    if @menu.update(menu_params)
      render json: MenuSerializer.new(@menu)
    else
      render json: @menu.errors, status: :unprocessable_entity
    end
  end

  # DELETE /menus/1 or /menus/1.json
  def destroy
    @menu.destroy
    render json: MenuSerializer.new(@menu)    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def menu_params
      params.require(:menu).permit(:name, :restaurant_id)
    end
end
