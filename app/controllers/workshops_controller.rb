class WorkshopsController < ApplicationController
  add_breadcrumb "Talleres", :root_path

  before_action :set_workshop, only: [:show, :edit, :update, :destroy]
  authorize_resource

  # GET /workshops
  # GET /workshops.json
  def index
    @semesters = Semester.all.order(id: :desc)
    if params[:semester_id].present?
      @workshops = Workshop.approved.where(semester_id: params[:semester_id], institution_id: @current_institution.id)
    end
  end

  def moderate
    @semesters = Semester.all.order(id: :desc)
    if params[:semester_id].present?
      @workshops = Workshop.where(semester_id: params[:semester_id], institution_id: @current_institution.id)
    end

    add_breadcrumb "Moderar", moderate_workshops_url
  end

  def my
    @workshops = current_mentor.workshops.order(semester_id: :desc) if mentor_signed_in?
    @workshops ||= current_student.workshops.approved.order(semester_id: :desc) if student_signed_in?
  end

  # GET /workshops/1
  # GET /workshops/1.json
  def show
    @mentor = @workshop.mentor
    @quotas = @workshop.quotas - @workshop.enrollments.confirmed.count
    @topics = @workshop.topics.order(created_at: :desc).limit(5)
    @materials = @workshop.materials.order(created_at: :desc).limit(5)
    @enrollment = Enrollment.new
    @enrollments = @workshop.enrollments.confirmed
  end

  # GET /workshops/new
  def new
    @workshop = Workshop.new
    @semesters = Semester.all.order(id: :desc)

    add_breadcrumb "Registrar Taller", new_workshop_url
  end

  # GET /workshops/1/edit
  def edit
    @mentors = Mentor.all

    add_breadcrumb "Editar Taller", edit_workshop_url(@workshop)
  end

  # POST /workshops
  # POST /workshops.json
  def create
    @workshop = Workshop.new(workshop_params)
    @workshop.mentor = current_mentor
    @workshop.semester = Semester.last
    @workshop.institution = @current_institution

    respond_to do |format|
      if @workshop.save
        format.html { redirect_to @workshop, notice: 'Tu taller fue registrado con éxito. Te noficiaremos cuando sea aceptado.' }
        format.json { render :show, status: :created, location: @workshop }
      else
        format.html { render :new }
        format.json { render json: @workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workshops/1
  # PATCH/PUT /workshops/1.json
  def update
    respond_to do |format|
      if @workshop.update(workshop_params)
        if params[:workshop][:approved].present?
          format.html { redirect_to moderate_workshops_url(semester_id: @workshop.semester_id), notice: 'Tu taller fue editado con éxito.' }
        else
          format.html { redirect_to @workshop, notice: 'Taller fue editado con éxito.' }
        end
        format.json { render :show, status: :ok, location: @workshop }
      else
        format.html { render :edit }
        format.json { render json: @workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workshops/1
  # DELETE /workshops/1.json
  def destroy
    @workshop.destroy
    respond_to do |format|
      format.html { redirect_to workshops_url, notice: 'Taller fue borrado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workshop
      @workshop = Workshop.find(params[:id])
      add_breadcrumb @workshop.title, workshop_url(@workshop)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workshop_params
      params.require(:workshop).permit(:mentor_id, :semester_id, :title, :description, :schedule, :quotas, :approved)
    end
end
