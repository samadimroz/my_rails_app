class StudentdataController < ApplicationController
  before_action :set_studentdatum, only: %i[ show edit update destroy ]

  # GET /studentdata or /studentdata.json
  def index
    @studentdata = Studentdatum.all
  end

  # GET /studentdata/1 or /studentdata/1.json
  def show
  end

  # GET /studentdata/new
  def new
    @studentdatum = Studentdatum.new
  end

  # GET /studentdata/1/edit
  def edit
  end

  # POST /studentdata or /studentdata.json
  def create
    @studentdatum = Studentdatum.new(studentdatum_params)

    respond_to do |format|
      if @studentdatum.save
        format.html { redirect_to studentdatum_url(@studentdatum), notice: "Studentdatum was successfully created." }
        format.json { render :show, status: :created, location: @studentdatum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @studentdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studentdata/1 or /studentdata/1.json
  def update
    respond_to do |format|
      if @studentdatum.update(studentdatum_params)
        format.html { redirect_to studentdatum_url(@studentdatum), notice: "Studentdatum was successfully updated." }
        format.json { render :show, status: :ok, location: @studentdatum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @studentdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentdata/1 or /studentdata/1.json
  def destroy
    @studentdatum.destroy

    respond_to do |format|
      format.html { redirect_to studentdata_url, notice: "Studentdatum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentdatum
      @studentdatum = Studentdatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def studentdatum_params
      params.require(:studentdatum).permit(:name, :age, :image, :address, :rno, :mobile, :course)
    end
end
