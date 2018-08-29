class EnrollmentsController < ApplicationController
  add_breadcrumb "Talleres", :root_path

  before_action :set_enrollment, only: [:show, :edit, :update, :destroy]
  authorize_resource

  # GET /enrollments
  # GET /enrollments.json
  def index
    @semesters = Semester.all.order(id: :desc)
    if params[:semester_id].present?
      @enrollments = Enrollment.joins(:workshop).where(workshops: { semester_id: params[:semester_id] })
    end
    add_breadcrumb "Inscripciones", moderate_workshops_url
  end

  # GET /enrollments/1
  # GET /enrollments/1.json
  def show
  end

  # GET /enrollments/new
  def new
    @enrollment = Enrollment.new
  end

  # GET /enrollments/1/edit
  def edit
  end

  # POST /enrollments
  # POST /enrollments.json
  def create
    @enrollment = Enrollment.new(enrollment_params)

    respond_to do |format|
      if @enrollment.save
        format.html { redirect_to @enrollment.workshop, notice: 'Tu preinscripción fue exitosa. Te noficaremos cuando seas inscrito.' }
        format.json { render :show, status: :created, location: @enrollment }
      else
        format.html { render :new }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrollments/1
  # PATCH/PUT /enrollments/1.json
  def update
    respond_to do |format|
      if @enrollment.update(enrollment_params)
        format.html { redirect_to moderate_workshops_url(semester_id: @enrollment.workshop.semester_id), notice: 'La preinscripción fue confirmada con éxito.' }
        format.json { render :show, status: :ok, location: @enrollment }
      else
        format.html { render :edit }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrollments/1
  # DELETE /enrollments/1.json
  def destroy
    @enrollment.destroy
    respond_to do |format|
      format.html { redirect_to moderate_workshops_url, notice: 'Inscripción borrada con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrollment
      @enrollment = Enrollment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enrollment_params
      params.require(:enrollment).permit(:student_id, :workshop_id, :confirmed)
    end
end
