class PatientAaccAnalyticsController < ApplicationController
  before_action :set_patient_aacc_analytic, only: %i[ show edit update destroy ]

  # GET /patient_aacc_analytics or /patient_aacc_analytics.json
  def index
    @patient_aacc_analytics = PatientAaccAnalytic.all
  end

  # GET /patient_aacc_analytics/1 or /patient_aacc_analytics/1.json
  def show
  end

  # GET /patient_aacc_analytics/new
  def new
    @patient_aacc_analytic = PatientAaccAnalytic.new
  end

  # GET /patient_aacc_analytics/1/edit
  def edit
  end

  # POST /patient_aacc_analytics or /patient_aacc_analytics.json
  def create
    @patient_aacc_analytic = PatientAaccAnalytic.new(patient_aacc_analytic_params)

    respond_to do |format|
      if @patient_aacc_analytic.save
        format.html { redirect_to @patient_aacc_analytic, notice: "Patient aacc analytic was successfully created." }
        format.json { render :show, status: :created, location: @patient_aacc_analytic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient_aacc_analytic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_aacc_analytics/1 or /patient_aacc_analytics/1.json
  def update
    respond_to do |format|
      if @patient_aacc_analytic.update(patient_aacc_analytic_params)
        format.html { redirect_to @patient_aacc_analytic, notice: "Patient aacc analytic was successfully updated." }
        format.json { render :show, status: :ok, location: @patient_aacc_analytic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient_aacc_analytic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_aacc_analytics/1 or /patient_aacc_analytics/1.json
  def destroy
    @patient_aacc_analytic.destroy
    respond_to do |format|
      format.html { redirect_to patient_aacc_analytics_url, notice: "Patient aacc analytic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_aacc_analytic
      @patient_aacc_analytic = PatientAaccAnalytic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_aacc_analytic_params
      params.require(:patient_aacc_analytic).permit(:idn, :value, :physycian_eval, :parameter_id, :analytics_id, :patient_id, :aacc_id)
    end
end
