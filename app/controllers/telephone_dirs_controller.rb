class TelephoneDirsController < ApplicationController
  before_action :set_telephone_dir, only: %i[ show edit update destroy ]

  # GET /telephone_dirs or /telephone_dirs.json
  def index
    @telephone_dirs = TelephoneDir.all
    @telephone_dirs = TelephoneDir.paginate(page: params[:page])
  end

  # GET /telephone_dirs/1 or /telephone_dirs/1.json
  def show
  end

  # GET /telephone_dirs/new
  def new
    @telephone_dir = TelephoneDir.new
  end

  # GET /telephone_dirs/1/edit
  def edit
  end

  # POST /telephone_dirs or /telephone_dirs.json
  def create
    @telephone_dir = TelephoneDir.new(telephone_dir_params)

    respond_to do |format|
      if @telephone_dir.save
        format.html { redirect_to telephone_dir_url(@telephone_dir), notice: "Telephone dir was successfully created." }
        format.json { render :show, status: :created, location: @telephone_dir }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @telephone_dir.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telephone_dirs/1 or /telephone_dirs/1.json
  def update
    respond_to do |format|
      if @telephone_dir.update(telephone_dir_params)
        format.html { redirect_to telephone_dir_url(@telephone_dir), notice: "Telephone dir was successfully updated." }
        format.json { render :show, status: :ok, location: @telephone_dir }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @telephone_dir.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telephone_dirs/1 or /telephone_dirs/1.json
  def destroy
    @telephone_dir.destroy

    respond_to do |format|
      format.html { redirect_to telephone_dirs_url, notice: "Telephone dir was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_telephone_dir
      @telephone_dir = TelephoneDir.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def telephone_dir_params
      params.require(:telephone_dir).permit(:firstname, :lastname, :phone, :emailid, :doorno, :street, :area, :city, :state, :country)
    end
end
