class ComplementaryTestsController < ApplicationController
  before_action :set_complementary_test, only: %i[ show edit update destroy ]

  # GET /complementary_tests or /complementary_tests.json
  def index
    @complementary_tests = ComplementaryTest.all
  end

  # GET /complementary_tests/1 or /complementary_tests/1.json
  def show
  end

  # GET /complementary_tests/new
  def new
    @complementary_test = ComplementaryTest.new
  end

  # GET /complementary_tests/1/edit
  def edit
  end

  # POST /complementary_tests or /complementary_tests.json
  def create
    @complementary_test = ComplementaryTest.new(complementary_test_params)

    respond_to do |format|
      if @complementary_test.save
        format.html { redirect_to @complementary_test, notice: "Complementary test was successfully created." }
        format.json { render :show, status: :created, location: @complementary_test }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @complementary_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complementary_tests/1 or /complementary_tests/1.json
  def update
    respond_to do |format|
      if @complementary_test.update(complementary_test_params)
        format.html { redirect_to @complementary_test, notice: "Complementary test was successfully updated." }
        format.json { render :show, status: :ok, location: @complementary_test }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @complementary_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complementary_tests/1 or /complementary_tests/1.json
  def destroy
    @complementary_test.destroy
    respond_to do |format|
      format.html { redirect_to complementary_tests_url, notice: "Complementary test was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complementary_test
      @complementary_test = ComplementaryTest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def complementary_test_params
      params.require(:complementary_test).permit(:idn, :id_type, :parameter, :parameter_en, :unit, :intervalues, :complementary_tests_type_id)
    end
end
