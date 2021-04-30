class PatronsController < ApplicationController
  before_action :set_patron, only: %i[ show update destroy ]

  # GET /patrons
  # GET /patrons.json
  def index
    @patrons = Patron.all
  end

  # GET /patrons/1
  # GET /patrons/1.json
  def show
  end

  # POST /patrons
  # POST /patrons.json
  def create
    @patron = Patron.new(patron_params)

    if @patron.save
      render :show, status: :created, location: @patron
    else
      render json: @patron.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patrons/1
  # PATCH/PUT /patrons/1.json
  def update
    if @patron.update(patron_params)
      render :show, status: :ok, location: @patron
    else
      render json: @patron.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patrons/1
  # DELETE /patrons/1.json
  def destroy
    @patron.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patron
      @patron = Patron.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patron_params
      params.require(:patron).permit(:first_name, :last_name, :street, :city, :state)
    end
end
