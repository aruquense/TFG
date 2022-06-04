class DiagnosisCisController < ApplicationController
  before_action :set_diagnosis_ci, only: %i[ show edit update destroy ]

  # GET /diagnosis_cis or /diagnosis_cis.json
  def index
    @diagnosis_cis = DiagnosisCi.all
  end

  # GET /diagnosis_cis/1 or /diagnosis_cis/1.json
  def show
  end

  # GET /diagnosis_cis/new
  def new
    @diagnosis_ci = DiagnosisCi.new
  end

  # GET /diagnosis_cis/1/edit
  def edit
  end

  # POST /diagnosis_cis or /diagnosis_cis.json
  def create
    @diagnosis_ci = DiagnosisCi.new(diagnosis_ci_params)

    respond_to do |format|
      if @diagnosis_ci.save
        format.html { redirect_to @diagnosis_ci, notice: "Diagnosis ci was successfully created." }
        format.json { render :show, status: :created, location: @diagnosis_ci }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @diagnosis_ci.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diagnosis_cis/1 or /diagnosis_cis/1.json
  def update
    respond_to do |format|
      if @diagnosis_ci.update(diagnosis_ci_params)
        format.html { redirect_to @diagnosis_ci, notice: "Diagnosis ci was successfully updated." }
        format.json { render :show, status: :ok, location: @diagnosis_ci }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @diagnosis_ci.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnosis_cis/1 or /diagnosis_cis/1.json
  def destroy
    @diagnosis_ci.destroy
    respond_to do |format|
      format.html { redirect_to diagnosis_cis_url, notice: "Diagnosis ci was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diagnosis_ci
      @diagnosis_ci = DiagnosisCi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diagnosis_ci_params
      params.require(:diagnosis_ci).permit(:idn, :description, :description_EN, :erase)
    end
end
