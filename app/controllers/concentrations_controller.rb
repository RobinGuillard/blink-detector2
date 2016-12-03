class ConcentrationsController < ApplicationController
  before_action :set_concentration, only: [:show, :edit, :update, :destroy]

  # GET /concentrations
  # GET /concentrations.json
  def index
    @concentrations = Concentration.all
  end

  # GET /concentrations/1
  # GET /concentrations/1.json
  def show
  end

  # GET /concentrations/new
  def new
    @concentration = Concentration.new
  end

  # GET /concentrations/1/edit
  def edit
  end

  # POST /concentrations
  # POST /concentrations.json
  def create
    @concentration = Concentration.new(concentration_params)

    respond_to do |format|
      if @concentration.save
        format.html { redirect_to @concentration, notice: 'Concentration was successfully created.' }
        format.json { render :show, status: :created, location: @concentration }
      else
        format.html { render :new }
        format.json { render json: @concentration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /concentrations/1
  # PATCH/PUT /concentrations/1.json
  def update
    respond_to do |format|
      if @concentration.update(concentration_params)
        format.html { redirect_to @concentration, notice: 'Concentration was successfully updated.' }
        format.json { render :show, status: :ok, location: @concentration }
      else
        format.html { render :edit }
        format.json { render json: @concentration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /concentrations/1
  # DELETE /concentrations/1.json
  def destroy
    @concentration.destroy
    respond_to do |format|
      format.html { redirect_to concentrations_url, notice: 'Concentration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concentration
      @concentration = Concentration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def concentration_params
      params.require(:concentration).permit(:concentration_level, :concentration_value, :datetime)
    end
end
