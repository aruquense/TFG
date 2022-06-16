class PatientAaccDiseasesController < ApplicationController
  before_action :set_patient_aacc_disease, only: %i[ show edit update destroy ]

  # GET /patient_aacc_diseases or /patient_aacc_diseases.json
  def index
    @patient_aacc_diseases = PatientAaccDisease.all
  end

  # GET /patient_aacc_diseases/1 or /patient_aacc_diseases/1.json
  def show
  end

  # GET /patient_aacc_diseases/new
  def new
    @patient_aacc_disease = PatientAaccDisease.new
  end

  # GET /patient_aacc_diseases/1/edit
  def edit
  end

  # POST /patient_aacc_diseases or /patient_aacc_diseases.json
  def create
    @patient_aacc_disease = PatientAaccDisease.new(patient_aacc_disease_params)

    respond_to do |format|
      if @patient_aacc_disease.save
        format.html { redirect_to @patient_aacc_disease, notice: "Patient aacc disease was successfully created." }
        format.json { render :show, status: :created, location: @patient_aacc_disease }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient_aacc_disease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_aacc_diseases/1 or /patient_aacc_diseases/1.json
  def update
    respond_to do |format|
      if @patient_aacc_disease.update(patient_aacc_disease_params)
        format.html { redirect_to @patient_aacc_disease, notice: "Patient aacc disease was successfully updated." }
        format.json { render :show, status: :ok, location: @patient_aacc_disease }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient_aacc_disease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_aacc_diseases/1 or /patient_aacc_diseases/1.json
  def destroy
    @patient_aacc_disease.destroy
    respond_to do |format|
      format.html { redirect_to patient_aacc_diseases_url, notice: "Patient aacc disease was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_aacc_disease
      @patient_aacc_disease = PatientAaccDisease.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_aacc_disease_params
      params.require(:patient_aacc_disease).permit(:idn, :description, :description_en)
    end
end
