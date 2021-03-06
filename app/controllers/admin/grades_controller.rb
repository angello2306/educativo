# Generate by Carlos Montalvo
class Admin::GradesController < Admin::BackendController
  before_action :set_grade, only: [:show, :edit, :update, :destroy]

  before_action :set_levels , only: [:new, :edit]
  # GET /grades
  # GET /grades.json
  def index
    # Use for search
    @grades = Grade.search params[:search], 10, params[:page]

    #@grades = Grade.all
  end

  # GET /grades/1
  # GET /grades/1.json
  def show
  end

  # GET /grades/new
  def new
    @grade = Grade.new
  end

  # GET /grades/1/edit
  def edit
  end

  # POST /grades
  # POST /grades.json
  def create
    @grade = Grade.new(grade_params)

    respond_to do |format|
      if @grade.save
        format.html { redirect_to edit_admin_grade_path(@grade), notice: 'Grade was successfully created.' }
        format.json { render action: 'show', status: :created, location: @grade }
      else
        format.html { render action: 'new' }
        format.json { render json: @grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grades/1
  # PATCH/PUT /grades/1.json
  def update
    respond_to do |format|
      if @grade.update(grade_params)
        format.html { redirect_to edit_admin_grade_path(@grade), notice: 'Grade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grades/1
  # DELETE /grades/1.json
  def destroy
    @grade.destroy
    respond_to do |format|
      format.html { redirect_to admin_grades_url, notice: 'Grade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

     def set_levels
      @levels = Level.all
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_grade
      @grade = Grade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grade_params
      params.require(:grade).permit(:name, :level_id)
    end
end
