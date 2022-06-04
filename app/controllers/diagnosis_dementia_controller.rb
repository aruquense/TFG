class DiagnosisDementiaController < ApplicationController
  before_action :set_diagnosis_dementium, only: %i[ show edit update destroy ]

  # GET /diagnosis_dementia or /diagnosis_dementia.json
  def index
    @diagnosis_dementia = DiagnosisDementium.all
  end

  # GET /diagnosis_dementia/1 or /diagnosis_dementia/1.json
  def show
  end

  # GET /diagnosis_dementia/new
  def new
    @diagnosis_dementium = DiagnosisDementium.new
  end

  # GET /diagnosis_dementia/1/edit
  def edit
  end

  # POST /diagnosis_dementia or /diagnosis_dementia.json
  def create
    @diagnosis_dementium = DiagnosisDementium.new(diagnosis_dementium_params)

    respond_to do |format|
      if @diagnosis_dementium.save
        format.html { redirect_to @diagnosis_dementium, notice: "Diagnosis dementium was successfully created." }
        format.json { render :show, status: :created, location: @diagnosis_dementium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @diagnosis_dementium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diagnosis_dementia/1 or /diagnosis_dementia/1.json
  def update
    respond_to do |format|
      if @diagnosis_dementium.update(diagnosis_dementium_params)
        format.html { redirect_to @diagnosis_dementium, notice: "Diagnosis dementium was successfully updated." }
        format.json { render :show, status: :ok, location: @diagnosis_dementium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @diagnosis_dementium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnosis_dementia/1 or /diagnosis_dementia/1.json
  def destroy
    @diagnosis_dementium.destroy
    respond_to do |format|
      format.html { redirect_to diagnosis_dementia_url, notice: "Diagnosis dementium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diagnosis_dementium
      @diagnosis_dementium = DiagnosisDementium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diagnosis_dementium_params
      params.require(:diagnosis_dementium).permit(:idn, :description, :description_EN, :erase)
    end
end
