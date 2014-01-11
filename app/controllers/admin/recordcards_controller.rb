# Generate by Carlos Montalvo
class Admin::RecordcardsController < Admin::BackendController
  before_action :set_recordcard, only: [:show, :edit, :update, :destroy]

  # GET /recordcards
  # GET /recordcards.json
  def index
    # Use for search
    @recordcards = Recordcard.search params[:search], 10, params[:page]

    #@recordcards = Recordcard.all
  end

  # GET /recordcards/1
  # GET /recordcards/1.json
  def show
  end

  # GET /recordcards/new
  def new
    @recordcard = Recordcard.new
  end

  # GET /recordcards/1/edit
  def edit
  end

  # POST /recordcards
  # POST /recordcards.json
  def create
    @recordcard = Recordcard.new(recordcard_params)

    respond_to do |format|
      if @recordcard.save
        format.html { redirect_to edit_admin_recordcard_path(@recordcard), notice: 'Recordcard was successfully created.' }
        format.json { render action: 'show', status: :created, location: @recordcard }
      else
        format.html { render action: 'new' }
        format.json { render json: @recordcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recordcards/1
  # PATCH/PUT /recordcards/1.json
  def update
    respond_to do |format|
      if @recordcard.update(recordcard_params)
        format.html { redirect_to edit_admin_recordcard_path(@recordcard), notice: 'Recordcard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recordcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recordcards/1
  # DELETE /recordcards/1.json
  def destroy
    @recordcard.destroy
    respond_to do |format|
      format.html { redirect_to admin_recordcards_url, notice: 'Recordcard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recordcard
      @recordcard = Recordcard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recordcard_params
      params.require(:recordcard).permit(:level_id, :grade_id, :section_id, :course_id, :student_id, :p1, :p2, :p3, :p4, :em, :eb)
    end
end
