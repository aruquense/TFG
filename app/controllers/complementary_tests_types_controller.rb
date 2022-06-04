class ComplementaryTestsTypesController < ApplicationController
  before_action :set_complementary_tests_type, only: %i[ show edit update destroy ]

  # GET /complementary_tests_types or /complementary_tests_types.json
  def index
    @complementary_tests_types = ComplementaryTestsType.all
  end

  # GET /complementary_tests_types/1 or /complementary_tests_types/1.json
  def show
  end

  # GET /complementary_tests_types/new
  def new
    @complementary_tests_type = ComplementaryTestsType.new
  end

  # GET /complementary_tests_types/1/edit
  def edit
  end

  # POST /complementary_tests_types or /complementary_tests_types.json
  def create
    @complementary_tests_type = ComplementaryTestsType.new(complementary_tests_type_params)

    respond_to do |format|
      if @complementary_tests_type.save
        format.html { redirect_to @complementary_tests_type, notice: "Complementary tests type was successfully created." }
        format.json { render :show, status: :created, location: @complementary_tests_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @complementary_tests_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complementary_tests_types/1 or /complementary_tests_types/1.json
  def update
    respond_to do |format|
      if @complementary_tests_type.update(complementary_tests_type_params)
        format.html { redirect_to @complementary_tests_type, notice: "Complementary tests type was successfully updated." }
        format.json { render :show, status: :ok, location: @complementary_tests_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @complementary_tests_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complementary_tests_types/1 or /complementary_tests_types/1.json
  def destroy
    @complementary_tests_type.destroy
    respond_to do |format|
      format.html { redirect_to complementary_tests_types_url, notice: "Complementary tests type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complementary_tests_type
      @complementary_tests_type = ComplementaryTestsType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def complementary_tests_type_params
      params.require(:complementary_tests_type).permit(:idn, :description, :description_en)
    end
end
