class EegEventsController < ApplicationController
  before_action :set_eeg_event, only: [:show, :edit, :update, :destroy]

  # GET /eeg_events
  # GET /eeg_events.json
  def index
    @eeg_events = EegEvent.all
  end

  # GET /eeg_events/1
  # GET /eeg_events/1.json
  def show
  end

  # GET /eeg_events/new
  def new
    @eeg_event = EegEvent.new
  end

  # GET /eeg_events/1/edit
  def edit
  end

  # POST /eeg_events
  # POST /eeg_events.json
  def create
    @eeg_event = EegEvent.new(eeg_event_params)

    respond_to do |format|
      if @eeg_event.save
        format.html { redirect_to @eeg_event, notice: 'Eeg event was successfully created.' }
        format.json { render :show, status: :created, location: @eeg_event }
      else
        format.html { render :new }
        format.json { render json: @eeg_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eeg_events/1
  # PATCH/PUT /eeg_events/1.json
  def update
    respond_to do |format|
      if @eeg_event.update(eeg_event_params)
        format.html { redirect_to @eeg_event, notice: 'Eeg event was successfully updated.' }
        format.json { render :show, status: :ok, location: @eeg_event }
      else
        format.html { render :edit }
        format.json { render json: @eeg_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eeg_events/1
  # DELETE /eeg_events/1.json
  def destroy
    @eeg_event.destroy
    respond_to do |format|
      format.html { redirect_to eeg_events_url, notice: 'Eeg event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eeg_event
      @eeg_event = EegEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eeg_event_params
      params.require(:eeg_event).permit(:event, :date)
    end
end
