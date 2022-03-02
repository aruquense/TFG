class PatientAaccTestsController < ApplicationController
  before_action :set_patient_aacc_test, only: %i[ show edit update destroy ]

  # GET /patient_aacc_tests or /patient_aacc_tests.json
  def index
    @patient_aacc_tests = PatientAaccTest.all
  end

  # GET /patient_aacc_tests/1 or /patient_aacc_tests/1.json
  def show
  end

  # GET /patient_aacc_tests/new
  def new
    @patient_aacc_test = PatientAaccTest.new
    
    @patient_aacc_test.exploration_type_id = ExplorationType.where(idn: params[:exploration_type_id]).first.description
    @patient_aacc_test.test_id = Test.where(idn: params[:test_id]).first.description
    @patient_aacc_test.aacc_id = Aacc.find(params[:aacc_id])._id
    @patient_aacc_test.patient_id = Patient.find(params[:patient_id])._id
  end

  # GET /patient_aacc_tests/1/edit
  def edit
  end

  # POST /patient_aacc_tests or /patient_aacc_tests.json
  def create
    @patient_aacc_test = PatientAaccTest.new(patient_aacc_test_params)

    respond_to do |format|
      if @patient_aacc_test.save
        format.html { redirect_to @patient_aacc_test, notice: "Patient aacc test was successfully created." }
        format.json { render :show, status: :created, location: @patient_aacc_test }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient_aacc_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_aacc_tests/1 or /patient_aacc_tests/1.json
  def update
    respond_to do |format|
      if @patient_aacc_test.update(patient_aacc_test_params)
        format.html { redirect_to @patient_aacc_test, notice: "Patient aacc test was successfully updated." }
        format.json { render :show, status: :ok, location: @patient_aacc_test }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient_aacc_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_aacc_tests/1 or /patient_aacc_tests/1.json
  def destroy
    @patient_aacc_test.destroy
    respond_to do |format|
      format.html { redirect_to patient_aacc_tests_url, notice: "Patient aacc test was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_aacc_test
      @patient_aacc_test = PatientAaccTest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_aacc_test_params
      params.require(:patient_aacc_test).permit(:idn, :answers, :score, :exploration_type_id, :test_id, :aacc_id, :patient_id)
    end
end
