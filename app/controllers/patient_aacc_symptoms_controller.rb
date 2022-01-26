class PatientAaccSymptomsController < ApplicationController
  before_action :set_patient_aacc_symptom, only: %i[ show edit update destroy ]

  # GET /patient_aacc_symptoms or /patient_aacc_symptoms.json
  def index
    @patient_aacc_symptoms = PatientAaccSymptom.all
  end

  # GET /patient_aacc_symptoms/1 or /patient_aacc_symptoms/1.json
  def show
    @aaa = PatientAaccSymptom.find(params[:id])
    render json: @aaa
  end

  # GET /patient_aacc_symptoms/new
  def new
    @patient_aacc_symptom = PatientAaccSymptom.new
    @patient_aacc_symptom.aacc = Aacc.find(params[:aacc_id])
  end

  # GET /patient_aacc_symptoms/1/edit
  def edit
  end

  # POST /patient_aacc_symptoms or /patient_aacc_symptoms.json
  def create
    @patient_aacc_symptom = PatientAaccSymptom.new(patient_aacc_symptom_params)
    
    #@patient_aacc_symptom.idn = @patient_aacc_symptom.idn

    respond_to do |format|
      if @patient_aacc_symptom.save
        format.html { redirect_to @patient_aacc_symptom, notice: "Patient aacc symptom was successfully created." }
        format.json { render :show, status: :created, location: @patient_aacc_symptom }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient_aacc_symptom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_aacc_symptoms/1 or /patient_aacc_symptoms/1.json
  def update
    respond_to do |format|
      if @patient_aacc_symptom.update(patient_aacc_symptom_params)
        format.html { redirect_to @patient_aacc_symptom, notice: "Patient aacc symptom was successfully updated." }
        format.json { render :show, status: :ok, location: @patient_aacc_symptom }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient_aacc_symptom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_aacc_symptoms/1 or /patient_aacc_symptoms/1.json
  def destroy
    @patient_aacc_symptom.destroy
    respond_to do |format|
      format.html { redirect_to patient_aacc_symptoms_url, notice: "Patient aacc symptom was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_aacc_symptom
      @patient_aacc_symptom = PatientAaccSymptom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_aacc_symptom_params
      params.require(:patient_aacc_symptom).permit(:idn, :aacc_id,:s1, :s2, :s3, :s4, :s5, :s6, :s7, :s8)
    end
end
