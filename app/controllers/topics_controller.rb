class TopicsController < ApplicationController
  add_breadcrumb "Talleres", :root_path

  before_action :set_workshop
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  authorize_resource

  # GET /topics
  # GET /topics.json
  def index
    @topics = @workshop.topics.order(created_at: :desc)
    add_breadcrumb "Foro", workshop_topics_url(@workshop)
  end

  # GET /topics/1
  # GET /topics/1.json
  def show
    @comment = Comment.new
    add_breadcrumb "Foro", workshop_topics_url(@workshop)
    add_breadcrumb @topic.title, workshop_topic_url(@workshop, @topic)
  end

  # GET /topics/new
  def new
    @topic = Topic.new
    add_breadcrumb "Foro", workshop_topics_url(@workshop)
    add_breadcrumb "Nuevo tópico", new_workshop_topic_url(@workshop)
  end

  # GET /topics/1/edit
  def edit
    add_breadcrumb "Editar tópico", edit_workshop_topic_url(@workshop)
  end

  # POST /topics
  # POST /topics.json
  def create
    @topic = Topic.new(topic_params)
    @topic.workshop = @workshop
    @topic.student = current_student
    @topic.student ||= current_mentor

    respond_to do |format|
      if @topic.save
        format.html { redirect_to [@workshop, @topic], notice: 'Tópico creado con éxito.' }
        format.json { render :show, status: :created, location: @topic }
      else
        format.html { render :new }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topics/1
  # PATCH/PUT /topics/1.json
  def update
    respond_to do |format|
      if @topic.update(topic_params)
        format.html { redirect_to [@workshop, @topic], notice: 'Tópico fue editado con éxito.' }
        format.json { render :show, status: :ok, location: @topic }
      else
        format.html { render :edit }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topics/1
  # DELETE /topics/1.json
  def destroy
    @topic.destroy
    respond_to do |format|
      format.html { redirect_to workshop_topics_url(@workshop), notice: 'Tópico fue borrado con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    def set_workshop
      @workshop = Workshop.find(params[:workshop_id])
      add_breadcrumb @workshop.title, workshop_url(@workshop)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @topic = Topic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_params
      params.require(:topic).permit(:workshop_id, :title, :description)
    end
end
