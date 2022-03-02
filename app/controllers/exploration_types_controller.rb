class ExplorationTypesController < ApplicationController
  before_action :set_exploration_type, only: %i[ show edit update destroy ]

  # GET /exploration_types or /exploration_types.json
  def index
    @exploration_types = ExplorationType.all
  end

  # GET /exploration_types/1 or /exploration_types/1.json
  def show
  end

  # GET /exploration_types/new
  def new
    @exploration_type = ExplorationType.new
  end

  # GET /exploration_types/1/edit
  def edit
  end

  # POST /exploration_types or /exploration_types.json
  def create
    @exploration_type = ExplorationType.new(exploration_type_params)

    respond_to do |format|
      if @exploration_type.save
        format.html { redirect_to @exploration_type, notice: "Exploration type was successfully created." }
        format.json { render :show, status: :created, location: @exploration_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exploration_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exploration_types/1 or /exploration_types/1.json
  def update
    respond_to do |format|
      if @exploration_type.update(exploration_type_params)
        format.html { redirect_to @exploration_type, notice: "Exploration type was successfully updated." }
        format.json { render :show, status: :ok, location: @exploration_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exploration_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exploration_types/1 or /exploration_types/1.json
  def destroy
    @exploration_type.destroy
    respond_to do |format|
      format.html { redirect_to exploration_types_url, notice: "Exploration type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exploration_type
      @exploration_type = ExplorationType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exploration_type_params
      params.require(:exploration_type).permit(:idn, :description, :description_EN)
    end
end
