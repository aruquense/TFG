class AaccsController < ApplicationController
  before_action :set_aacc, only: %i[ show edit update destroy ]
  before_action :set_aacc_mr, only: %i[ index ]

  # GET /aaccs or /aaccs.json
  def index
    @aaccs = @aacc
    
  end

  # GET /aaccs/1 or /aaccs/1.json
  def show
  end

  # GET /aaccs/new
  def new
    @aacc = Aacc.new
  end

  # GET /aaccs/1/edit
  def edit
  end

  # POST /aaccs or /aaccs.json
  def create
    @aacc = Aacc.new(aacc_params)
    @aacc.Patient_id = Patient.last

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
    @aacc.destroy
    respond_to do |format|
      format.html { redirect_to aaccs_url, notice: "Aacc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aacc
      @aacc = Aacc.find(params[:id])
    end

    def set_aacc_mr
      @paciente = Patient.find(params[:patient_id])
      puts @paciente.idn
      puts "\n\n\n Paciente medicalrecord #{@paciente.idn} \n\n\n"
      @aacc =Aacc.where(medicalrecord: @paciente.idn)
      puts "\n\n cuantos casos tiene #{@aacc.count} \n\n\n"

    end

    # Only allow a list of trusted parameters through.
    def aacc_params
      params.require(:aacc).permit(:medicalrecord, :id_activity_type, :id_physician, :observations, :finished)
    end
end
