class PatientAaccHabitsController < ApplicationController
  before_action :set_patient_aacc_habit, only: %i[ show edit update destroy ]
  before_action :set_patient, only: %i[ habits_history ]

  # GET /patient_aacc_habits or /patient_aacc_habits.json
  def index
    @patient_aacc_habits = PatientAaccHabit.all
  end

  def habits_history
    @patient_aacc_habits = PatientAaccHabit.where(patient: @paciente)
  end  
  
  # GET /patient_aacc_habits/1 or /patient_aacc_habits/1.json
  def show
  end

  # GET /patient_aacc_habits/new
  def new
    @patient_aacc_habit = PatientAaccHabit.new
    
  end

  # GET /patient_aacc_habits/1/edit
  def edit
  end

  # POST /patient_aacc_habits or /patient_aacc_habits.json
  def create
    @patient_aacc_habit = PatientAaccHabit.new(patient_aacc_habit_params)
    @patient_aacc_habit.aacc_id = Aacc.last
    @patient_aacc_habit.patient_id = Patient.last
    respond_to do |format|
      if @patient_aacc_habit.save
        format.html { redirect_to @patient_aacc_habit, notice: "Patient aacc habit was successfully created." }
        format.json { render :show, status: :created, location: @patient_aacc_habit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient_aacc_habit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_aacc_habits/1 or /patient_aacc_habits/1.json
  def update
    respond_to do |format|
      if @patient_aacc_habit.update(patient_aacc_habit_params)
        format.html { redirect_to @patient_aacc_habit, notice: "Patient aacc habit was successfully updated." }
        format.json { render :show, status: :ok, location: @patient_aacc_habit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient_aacc_habit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_aacc_habits/1 or /patient_aacc_habits/1.json
  def destroy
    @patient_aacc_habit.destroy
    respond_to do |format|
      format.html { redirect_to patient_aacc_habits_url, notice: "Patient aacc habit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_aacc_habit
      @patient_aacc_habit = PatientAaccHabit.find(params[:id])
    end    
    def set_patient
      @paciente = Patient.find(params[:patient_id])
    end

    # Only allow a list of trusted parameters through.
    def patient_aacc_habit_params
      params.require(:patient_aacc_habit).permit(:idn, :habit, :comments, :aacc_id, :patient_id)
    end
end
