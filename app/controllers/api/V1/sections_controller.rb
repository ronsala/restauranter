class Api::V1::SectionsController < ApplicationController
  before_action :set_section, only: %i[ show edit update destroy ]

  # GET /sections or /sections.json
  def index
    @menu = Menu.find(params[:menu_id])
    @sections = @menu.sections
    render json: SectionSerializer.new(@sections)
  end

  # GET /sections/1 or /sections/1.json
  def show
  end

  # GET /sections/new
  def new
    @section = Section.new
  end

  # GET /sections/1/edit
  def edit
  end

  # POST /sections or /sections.json
  def create
    @section = Section.new(section_params)
    if @section.save
      render json: SectionSerializer.new(@section)
    else
      render json: @section.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sections/1 or /sections/1.json
  def update
    if @section.update(section_params)
      render json: MenuSerializer.new(@menu)
    else
      render json: @menu.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sections/1 or /sections/1.json
  def destroy
    @section.destroy
    render json: SectionSerializer.new(@section)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section
      @section = Section.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def section_params
      params.require(:section).permit(:name, :menu_id)
    end
end
