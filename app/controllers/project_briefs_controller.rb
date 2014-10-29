class ProjectBriefsController < ApplicationController
  before_action :set_project_brief, only: [:show, :edit, :update, :destroy]

  # GET /project_briefs
  # GET /project_briefs.json
  def index
    @project_briefs = ProjectBrief.all
  end

  # GET /project_briefs/1
  # GET /project_briefs/1.json
  def show
  end

  # GET /project_briefs/new
  def new
    @project_brief = ProjectBrief.new
  end

  # GET /project_briefs/1/edit
  def edit
  end

  # POST /project_briefs
  # POST /project_briefs.json
  def create
    @project_brief = ProjectBrief.new(project_brief_params)

    respond_to do |format|
      if @project_brief.save
        format.html { redirect_to @project_brief, notice: 'Project brief was successfully created.' }
        format.json { render :show, status: :created, location: @project_brief }
      else
        format.html { render :new }
        format.json { render json: @project_brief.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_briefs/1
  # PATCH/PUT /project_briefs/1.json
  def update
    respond_to do |format|
      if @project_brief.update(project_brief_params)
        format.html { redirect_to @project_brief, notice: 'Project brief was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_brief }
      else
        format.html { render :edit }
        format.json { render json: @project_brief.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_briefs/1
  # DELETE /project_briefs/1.json
  def destroy
    @project_brief.destroy
    respond_to do |format|
      format.html { redirect_to project_briefs_url, notice: 'Project brief was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_brief
      @project_brief = ProjectBrief.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_brief_params
      params.require(:project_brief).permit(:user_id, :department, :cost_center, :budget_in_cents, :target_date, :participating_stores)
    end
end
