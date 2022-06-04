class PatientAaccPrescriptionsController < ApplicationController
  before_action :set_patient_aacc_prescription, only: %i[ show edit update destroy ]

  # GET /patient_aacc_prescriptions or /patient_aacc_prescriptions.json
  def index
    @patient_aacc_prescriptions = PatientAaccPrescription.all
    @patient_aacc_prescription = PatientAaccPrescription.new
    #@aaccs =Aacc.where(medicalrecord: @patient_aacc_prescription.aacc_id)
  end

  # GET /patient_aacc_prescriptions/1 or /patient_aacc_prescriptions/1.json
  def show
  end

  # GET /patient_aacc_prescriptions/new
  def new
    @patient_aacc_prescription = PatientAaccPrescription.new
  end

  # GET /patient_aacc_prescriptions/1/edit
  def edit
  end

  # POST /patient_aacc_prescriptions or /patient_aacc_prescriptions.json
  def create
    @patient_aacc_prescription = PatientAaccPrescription.new(patient_aacc_prescription_params)

    respond_to do |format|
      if @patient_aacc_prescription.save
        format.html { redirect_to @patient_aacc_prescription, notice: "Patient aacc prescription was successfully created." }
        format.json { render :show, status: :created, location: @patient_aacc_prescription }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient_aacc_prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_aacc_prescriptions/1 or /patient_aacc_prescriptions/1.json
  def update
    respond_to do |format|
      if @patient_aacc_prescription.update(patient_aacc_prescription_params)
        format.html { redirect_to @patient_aacc_prescription, notice: "Patient aacc prescription was successfully updated." }
        format.json { render :show, status: :ok, location: @patient_aacc_prescription }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient_aacc_prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_aacc_prescriptions/1 or /patient_aacc_prescriptions/1.json
  def destroy
    @patient_aacc_prescription.destroy
    respond_to do |format|
      format.html { redirect_to patient_aacc_prescriptions_url, notice: "Patient aacc prescription was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_aacc_prescription
      @patient_aacc_prescription = PatientAaccPrescription.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_aacc_prescription_params
      params.require(:patient_aacc_prescription).permit(:idn, :id_physician, :value, :prescription_drugs_type_id, :aacc_id, :patient_id)
    end
end
