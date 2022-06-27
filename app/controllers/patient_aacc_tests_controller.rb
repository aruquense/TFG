class PatientAaccTestsController < ApplicationController
  before_action :set_patient_aacc_test, only: %i[ show edit update destroy ]
  before_action :set_patient_aacc_test_new,  except: %i[ index create show edit update destroy  ]
  before_action :set_aacc_paciente_render, only: %i[     new_test_barthel new_test_fast new_test_informador new_test_katz new_test_lawton_brody new_test_mec new_test_minimental new_test_npi new_test_pfeiffer new_test_reloj new_test_yesavage_4 new_test_yesavage_10 new_test_yesavage_15 new_test_yesavage_30      ]

  require 'calculate.rb'
  # GET /patient_aacc_tests or /patient_aacc_tests.json
  def index
    @patient_aacc_tests = PatientAaccTest.all
  end

  # GET /patient_aacc_tests/1 or /patient_aacc_tests/1.json
  def show
  end

  # GET /patient_aacc_tests/new
  def new
  end  
  def new_test_barthel
  end
  def new_test_fast
  end
  def new_test_informador
  end
  def new_test_katz
  end
  def new_test_lawton_brody
  end
  def new_test_mec
  end
  def new_test_minimental
  end
  def new_test_npi
  end
  def new_test_pfeiffer
  end
  def new_test_reloj
  end
  def new_test_yesavage_4
  end
  def new_test_yesavage_10
  end
  def new_test_yesavage_15
  end
  def new_test_yesavage_30
  end

  # GET /patient_aacc_tests/1/edit
  def edit
  end

  # POST /patient_aacc_tests or /patient_aacc_tests.json
  def create
    @patient_aacc_test = PatientAaccTest.new(patient_aacc_test_params)
    puts "\n\n\n\n LLAMADA A SCORE #{params[:operation]} \n\n\n"
    case params[:operation]
    when "test_reloj"
      puts "\n\n\n\n LLAMADA A test reloj? #{params[:operation]} \n\n\n"
      @result = Calculate.send(params[:operation], *[params[:s1], params[:s2], params[:s3]])
    when "test_yesavage_4"
      puts "\n\n\n\n LLAMADA A test_yessavage_4 #{params[:operation]} \n\n\n"
      @result = Calculate.send(params[:operation], *[params[:s1], params[:s2], params[:s3], params[:s4]])
    when "test_yesavage_10"
      puts "\n\n\n\n LLAMADA A test_yessavage_10? #{params[:operation]} \n\n\n"
      @result = Calculate.send(params[:operation], *[params[:s1], params[:s2], params[:s3], params[:s4], params[:s5], params[:s6], params[:s7], params[:s8], params[:s9], params[:s10]])
    when "test_yesavage_15"
      puts "\n\n\n\n LLAMADA A test_yessavage_15? #{params[:operation]} \n\n\n"
      @result = Calculate.send(params[:operation], *[params[:s1], params[:s2], params[:s3], params[:s4], params[:s5], params[:s6], params[:s7], params[:s8], params[:s9], params[:s10],params[:s11], params[:s12], params[:s13], params[:s14], params[:s15]])
    when "test_yesavage_30"
      puts "\n\n\n\n LLAMADA A test_yessavage_30? #{params[:operation]} \n\n\n"
      @result = Calculate.send(params[:operation], *[params[:s1], params[:s2], params[:s3], params[:s4], params[:s5], params[:s6], params[:s7], params[:s8], params[:s9], params[:s10], params[:s11], params[:s12], params[:s13], params[:s14], params[:s15], params[:s16], params[:s17], params[:s18], params[:s19],params[:s20],params[:s21], params[:s22], params[:s23], params[:s24], params[:s25], params[:s26], params[:s27], params[:s28], params[:s29], params[:s30]])
    when "test_katz"
      @result = params[:s1]    
    when "test_fast"
      @result = params[:s1]
    when "test_informador"
      puts "\n\n\n\n LLAMADA A test INFORMADOR? #{params[:operation]} \n\n\n"
      @result = Calculate.send(params[:operation], *[params[:s1], params[:s2], params[:s3], params[:s4], params[:s5], params[:s6], params[:s7], params[:s8], params[:s9], params[:s10], params[:s11], params[:s12], params[:s13], params[:s14], params[:s15], params[:s16], params[:s17], params[:s18], params[:s19], params[:s20], params[:s21], params[:s22], params[:s23], params[:s24], params[:s25], params[:s26]])    
    when "test_pfeiffer"
     # puts "\n\n\n\n LLAMADA A test_pfeiffer? #{params[:operation]} \n\n\n"
      @result = Calculate.send(params[:operation], *[params[:s1], params[:s2], params[:s3], params[:s4], params[:s5], params[:s6], params[:s7], params[:s8], params[:s9], params[:s10], params[:s11]])
    else
      puts "\n\n\n\n TEST NO IMPLEMENTADO O ERROR EN EL PARAMETRO #{params[:operation]} \n\n\n"
      
    end
    #puts "\n\n\n\n Resultado create #{@result} \n\n\n"
    @patient_aacc_test.score=@result

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
    def set_patient_aacc_test_new
    
      @patient_aacc_test = PatientAaccTest.new
      @patient_aacc_test.exploration_type_id = ExplorationType.where(idn: params[:exploration_type_id]).first._id
      @patient_aacc_test.test_id = Test.where(idn: params[:test_id]).first._id
      @patient_aacc_test.aacc_id = Aacc.find(params[:aacc_id])._id
      @patient_aacc_test.patient_id = Patient.find(params[:patient_id])._id
  end
  
    

    def set_aacc_paciente_render
      @paciente = Patient.find(params[:patient_id])
      @aacc = Aacc.find(params[:aacc_id])
    end
    # Only allow a list of trusted parameters through.
    def patient_aacc_test_params
      params.require(:patient_aacc_test).permit(:idn, :answers, :score, :exploration_type_id, :test_id, :aacc_id, :patient_id, :s1, :s2, :s3, :s4, :s5, :s6, :s7, :s8, :s9, :s10, :s11, :s12, :s13, :s14, :s15, :s16, :s17, :s18, :s19, :s20, :s21, :s22, :s23, :s24, :s25, :s26, :s27, :s28, :s29, :s30, :operation)
    end
end
