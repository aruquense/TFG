class PatientAaccsController < ApplicationController
  before_action :set_patient_aacc, only: %i[ show edit update destroy ]

  # GET /patient_aaccs or /patient_aaccs.json
  def index
    @patient_aaccs = PatientAacc.all
  end

  # GET /patient_aaccs/1 or /patient_aaccs/1.json
  def show
  end

  # GET /patient_aaccs/new
  def new
    @patient_aacc = PatientAacc.new
  end

  # GET /patient_aaccs/1/edit
  def edit
  end

  # POST /patient_aaccs or /patient_aaccs.json
  def create
    @patient_aacc = PatientAacc.new(patient_aacc_params)
    @patient_aacc.Patient_id=1

    respond_to do |format|
      if @patient_aacc.save
        format.html { redirect_to @patient_aacc, notice: "Patient aacc was successfully created." }
        format.json { render :show, status: :created, location: @patient_aacc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient_aacc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_aaccs/1 or /patient_aaccs/1.json
  def update
    respond_to do |format|
      if @patient_aacc.update(patient_aacc_params)
        format.html { redirect_to @patient_aacc, notice: "Patient aacc was successfully updated." }
        format.json { render :show, status: :ok, location: @patient_aacc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient_aacc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_aaccs/1 or /patient_aaccs/1.json
  def destroy
    @patient_aacc.destroy
    respond_to do |format|
      format.html { redirect_to patient_aaccs_url, notice: "Patient aacc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_aacc
      @patient_aacc = PatientAacc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_aacc_params
      params.require(:patient_aacc).permit(:medicalrecord, :id_activity_type, :id_physician, :observations, :finished, :Patient_id)
    end
end
