class PrescriptionDrugsTypesController < ApplicationController
  before_action :set_prescription_drugs_type, only: %i[ show edit update destroy ]

  # GET /prescription_drugs_types or /prescription_drugs_types.json
  def index
    @prescription_drugs_types = PrescriptionDrugsType.all
  end

  # GET /prescription_drugs_types/1 or /prescription_drugs_types/1.json
  def show
  end

  # GET /prescription_drugs_types/new
  def new
    @prescription_drugs_type = PrescriptionDrugsType.new
  end

  # GET /prescription_drugs_types/1/edit
  def edit
  end

  # POST /prescription_drugs_types or /prescription_drugs_types.json
  def create
    @prescription_drugs_type = PrescriptionDrugsType.new(prescription_drugs_type_params)

    respond_to do |format|
      if @prescription_drugs_type.save
        format.html { redirect_to @prescription_drugs_type, notice: "Prescription drugs type was successfully created." }
        format.json { render :show, status: :created, location: @prescription_drugs_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prescription_drugs_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescription_drugs_types/1 or /prescription_drugs_types/1.json
  def update
    respond_to do |format|
      if @prescription_drugs_type.update(prescription_drugs_type_params)
        format.html { redirect_to @prescription_drugs_type, notice: "Prescription drugs type was successfully updated." }
        format.json { render :show, status: :ok, location: @prescription_drugs_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prescription_drugs_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescription_drugs_types/1 or /prescription_drugs_types/1.json
  def destroy
    @prescription_drugs_type.destroy
    respond_to do |format|
      format.html { redirect_to prescription_drugs_types_url, notice: "Prescription drugs type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescription_drugs_type
      @prescription_drugs_type = PrescriptionDrugsType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prescription_drugs_type_params
      params.require(:prescription_drugs_type).permit(:idn, :description, :description_EN)
    end
end
