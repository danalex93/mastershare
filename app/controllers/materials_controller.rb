class MaterialsController < ApplicationController
  add_breadcrumb "Talleres", :root_path

  before_action :set_workshop
  before_action :set_material, only: [:show, :edit, :update, :destroy]
  authorize_resource

  # GET /materials
  # GET /materials.json
  def index
    @materials = @workshop.materials.order(created_at: :desc)
    add_breadcrumb "Materiales", workshop_materials_url(@workshop)
  end

  # GET /materials/1
  # GET /materials/1.json
  def show
  end

  # GET /materials/new
  def new
    @material = Material.new
    add_breadcrumb "Materiales", workshop_materials_url(@workshop)
    add_breadcrumb "Subir Material", new_workshop_material_url(@workshop)
  end

  # GET /materials/1/edit
  def edit
  end

  # POST /materials
  # POST /materials.json
  def create
    @material = Material.new(material_params)
    @material.workshop = @workshop

    respond_to do |format|
      if @material.save
        format.html { redirect_to workshop_materials_url(@workshop), notice: 'Material was successfully created.' }
        format.json { render :show, status: :created, location: @material }
      else
        format.html { render :new }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materials/1
  # PATCH/PUT /materials/1.json
  def update
    respond_to do |format|
      if @material.update(material_params)
        format.html { redirect_to workshop_materials_url(@workshop), notice: 'Material was successfully updated.' }
        format.json { render :show, status: :ok, location: @material }
      else
        format.html { render :edit }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materials/1
  # DELETE /materials/1.json
  def destroy
    @material.destroy
    respond_to do |format|
      format.html { redirect_to workshop_materials_url(@workshop), notice: 'Material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_workshop
      @workshop = Workshop.find(params[:workshop_id])
      add_breadcrumb @workshop.title, workshop_url(@workshop)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_material
      @material = Material.find(params[:id])
      add_breadcrumb @material.title, workshop_material_url(@workshop)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_params
      params.require(:material).permit(:title, :workshop_id, :file)
    end
end
