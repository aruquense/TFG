class AaccsController < ApplicationController
  before_action :set_aacc, only: %i[ show edit update destroy ]

  # GET /aaccs or /aaccs.json
  def index
    @paciente = Patient.find(params[:patient_id])
    puts @paciente.idn
    puts "\n\n\n Paciente medicalrecord #{@paciente.idn} \n\n\n"
    @aaccs =Aacc.where(medicalrecord: @paciente.idn)
  end

  # GET /aaccs/1 or /aaccs/1.json
  def show
  end
  # GET /:patient_id/aaccs/
  

  # GET /aaccs/new
  def new
    @aacc = Aacc.new
    @paciente = Patient.find(params[:patient_id])
    @aacc.Patient = @paciente
    @aacc.medicalrecord = @paciente.idn
  end

  # GET /aaccs/1/edit
  def edit
  end

  # POST /aaccs or /aaccs.json
  def create
    @aacc = Aacc.new(aacc_params)

    respond_to do |format|
      if @aacc.save
        format.html { redirect_to @aacc, notice: "Aacc was successfully created." }
        format.json { render :show, status: :created, location: @aacc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aacc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aaccs/1 or /aaccs/1.json
  def update
    respond_to do |format|
      if @aacc.update(aacc_params)
        format.html { redirect_to @aacc, notice: "Aacc was successfully updated." }
        format.json { render :show, status: :ok, location: @aacc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aacc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aaccs/1 or /aaccs/1.json
  def destroy
    @paciente = @aacc.Patient
    @aacc.destroy
    respond_to do |format|
      format.html { redirect_to patient_aaccs_path(@paciente), notice: "Aacc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aacc
      @aacc = Aacc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aacc_params
      params.require(:aacc).permit(:medicalrecord, :id_activity_type, :id_physician, :observations, :finished, :Patient_id)
    end
end
