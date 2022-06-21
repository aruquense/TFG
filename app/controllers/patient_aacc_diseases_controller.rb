class PatientAaccDiseasesController < ApplicationController
  before_action :set_patient_aacc_disease, only: %i[ show edit update destroy ]
  before_action :set_params, only: %i[ index edit new new_computacional_diagnosis1 new_computacional_diagnosis2 ] 

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
    @patient_aacc_disease.patient = @paciente._id
    @patient_aacc_disease.aacc = @aacc._id
    puts "\n\n\n dis Patient #{@patient_aacc_disease.patient} "
    puts "\n dis Aacc #{@patient_aacc_disease.aacc} \n\n\n"
  end
  def new_computacional_diagnosis1
    @patient_aacc_disease = PatientAaccDisease.new
    @patient_aacc_disease.patient = @paciente._id
    @patient_aacc_disease.aacc = @aacc._id
    puts "\n\n\n dis Patient #{@patient_aacc_disease.patient} "
    puts "\n dis Aacc #{@patient_aacc_disease.aacc} \n\n\n"
  end
  def new_computacional_diagnosis2
    @patient_aacc_disease = PatientAaccDisease.new
    @patient_aacc_disease.patient = @paciente._id
    @patient_aacc_disease.aacc = @aacc._id
    puts "\n\n\n dis Patient #{@patient_aacc_disease.patient} "
    puts "\n dis Aacc #{@patient_aacc_disease.aacc} \n\n\n"
  end

  # GET /patient_aacc_diseases/1/edit
  def edit
  end

  # POST /patient_aacc_diseases or /patient_aacc_diseases.json
  def create
    @patient_aacc_disease = PatientAaccDisease.new(patient_aacc_disease_params)
    puts "\n\n\n Paciente medicalrecord #{@patient_aacc_disease.aacc} \n\n\n"


    respond_to do |format|
      if @patient_aacc_disease.save
        format.html { redirect_to patient_aacc_patient_aacc_diseases_url(:patient_id => Patient.last, :aacc_id => Aacc.last), notice: "Patient aacc disease was successfully created." }
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

    def set_params
      @paciente = Patient.find(params[:patient_id])
      @aacc = Aacc.find(params[:aacc_id])
    end
    # Only allow a list of trusted parameters through.
    def patient_aacc_disease_params
      params.require(:patient_aacc_disease).permit(:idn, :description, :description_en, :diagnosis_dementium, :diagnosis_ci, :aacc, :patient, :diagnosis_type)
    end
end
