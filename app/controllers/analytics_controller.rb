class AnalyticsController < ApplicationController
  before_action :set_analytic, only: %i[ show edit update destroy ]

  # GET /analytics or /analytics.json
  def index
    @analytics = Analytic.all
  end

  # GET /analytics/1 or /analytics/1.json
  def show
  end

  # GET /analytics/new
  def new
    @analytic = Analytic.new
  end

  # GET /analytics/1/edit
  def edit
  end

  # POST /analytics or /analytics.json
  def create
    @analytic = Analytic.new(analytic_params)

    respond_to do |format|
      if @analytic.save
        format.html { redirect_to @analytic, notice: "Analytic was successfully created." }
        format.json { render :show, status: :created, location: @analytic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @analytic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analytics/1 or /analytics/1.json
  def update
    respond_to do |format|
      if @analytic.update(analytic_params)
        format.html { redirect_to @analytic, notice: "Analytic was successfully updated." }
        format.json { render :show, status: :ok, location: @analytic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @analytic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analytics/1 or /analytics/1.json
  def destroy
    @analytic.destroy
    respond_to do |format|
      format.html { redirect_to analytics_url, notice: "Analytic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analytic
      @analytic = Analytic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def analytic_params
      params.require(:analytic).permit(:idn, :value, :physician_eval, :received_date, :analytics_status_id, :physician_id, :type_id, :patient_id, :aacc_id)
    end
end
