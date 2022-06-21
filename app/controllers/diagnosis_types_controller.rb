class DiagnosisTypesController < ApplicationController
  before_action :set_diagnosis_type, only: %i[ show edit update destroy ]

  # GET /diagnosis_types or /diagnosis_types.json
  def index
    @diagnosis_types = DiagnosisType.all
  end

  # GET /diagnosis_types/1 or /diagnosis_types/1.json
  def show
  end

  # GET /diagnosis_types/new
  def new
    @diagnosis_type = DiagnosisType.new
  end

  # GET /diagnosis_types/1/edit
  def edit
  end

  # POST /diagnosis_types or /diagnosis_types.json
  def create
    @diagnosis_type = DiagnosisType.new(diagnosis_type_params)

    respond_to do |format|
      if @diagnosis_type.save
        format.html { redirect_to @diagnosis_type, notice: "Diagnosis type was successfully created." }
        format.json { render :show, status: :created, location: @diagnosis_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @diagnosis_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diagnosis_types/1 or /diagnosis_types/1.json
  def update
    respond_to do |format|
      if @diagnosis_type.update(diagnosis_type_params)
        format.html { redirect_to @diagnosis_type, notice: "Diagnosis type was successfully updated." }
        format.json { render :show, status: :ok, location: @diagnosis_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @diagnosis_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnosis_types/1 or /diagnosis_types/1.json
  def destroy
    @diagnosis_type.destroy
    respond_to do |format|
      format.html { redirect_to diagnosis_types_url, notice: "Diagnosis type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diagnosis_type
      @diagnosis_type = DiagnosisType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diagnosis_type_params
      params.require(:diagnosis_type).permit(:idn, :description, :description_en)
    end
end
