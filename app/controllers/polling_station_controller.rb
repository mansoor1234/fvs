class PollingStationController < ApplicationController
  before_action :set_params, only: %i[show edit update destroy]
  def index
    @polling_stations = PollingStation.all
  end

  def new
    @polling_station = PollingStation.new

  end

  def create
    @polling_station = PollingStation.new(polling_stations_params)
       @polling_station.save
        redirect_to polling_station_url
  end

  def edit
  end

  def show
  end

  def update
    respond_to do |format|
      if @polling_station.update(polling_stations_params)
        format.html { redirect_to @polling_station, notice: "polling_station was successfully updated." }
        format.json { render :show, status: :ok, location: @polling_station }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @polling_station.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @polling_station.destroy
    respond_to do |format|
      format.html { redirect_to polling_station_url, notice: "polling_station was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def polling_stations_params
    params.require(:polling_station).permit(:name, :city, :UC, :voter_id)
  end

  def set_params
    @polling_station = PollingStation.find(params[:id])
  end
end
