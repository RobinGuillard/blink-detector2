class EegsController < ApplicationController
  before_action :set_eeg, only: [:show, :edit, :update, :destroy]

  # GET /eegs
  # GET /eegs.json
  def index
    @eegs = Eeg.all
  end

  # GET /eegs/1
  # GET /eegs/1.json
  def show
  end

  # GET /eegs/new
  def new
    @eeg = Eeg.new
  end

  # GET /eegs/1/edit
  def edit
  end

  # POST /eegs
  # POST /eegs.json
  def create
    @eeg = Eeg.new(eeg_params)

    respond_to do |format|
      if @eeg.save
        format.html { redirect_to @eeg, notice: 'Eeg was successfully created.' }
        format.json { render :show, status: :created, location: @eeg }
      else
        format.html { render :new }
        format.json { render json: @eeg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eegs/1
  # PATCH/PUT /eegs/1.json
  def update
    respond_to do |format|
      if @eeg.update(eeg_params)
        format.html { redirect_to @eeg, notice: 'Eeg was successfully updated.' }
        format.json { render :show, status: :ok, location: @eeg }
      else
        format.html { render :edit }
        format.json { render json: @eeg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eegs/1
  # DELETE /eegs/1.json
  def destroy
    @eeg.destroy
    respond_to do |format|
      format.html { redirect_to eegs_url, notice: 'Eeg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eeg
      @eeg = Eeg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eeg_params
      params.require(:eeg).permit(:event, :date)
    end
end
