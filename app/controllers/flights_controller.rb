class FlightsController < ApplicationController
  before_action :set_flight, only: %i[ show edit update destroy ]

  # GET /flights or /flights.json
  def index
    puts params
    if(params.has_key?(:search))
      @search_results ||= generate_query(params[:search])
    end
    @airports = Airport.all.includes(:outbound_flights)
    @flights = Flight.all
    @booking = Booking.new
  end

  # GET /flights/1 or /flights/1.json
  def show
  end

  # GET /flights/new
  def new
    @flight = Flight.new
  end

  # GET /flights/1/edit
  def edit
  end

  # POST /flights or /flights.json
  def create
    @flight = Flight.new(flight_params)

    respond_to do |format|
      if @flight.save
        format.html { redirect_to flight_url(@flight), notice: "Flight was successfully created." }
        format.json { render :show, status: :created, location: @flight }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flights/1 or /flights/1.json
  def update
    respond_to do |format|
      if @flight.update(flight_params)
        format.html { redirect_to flight_url(@flight), notice: "Flight was successfully updated." }
        format.json { render :show, status: :ok, location: @flight }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flights/1 or /flights/1.json
  def destroy
    @flight.destroy

    respond_to do |format|
      format.html { redirect_to flights_url, notice: "Flight was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight
      @flight = Flight.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flight_params
      params.require(:flight).permit(:departure_time, :departure_date, :arrival_time, :arrival_date, :flight_capacity)
    end

    def generate_query(params)
      flights = Flight.where("inbound_airport_id LIKE '#{params[:inbound_airport_id].to_i}'") unless params[:inbound_airport_id].blank?
      flights = flights.where("outbound_airport_id LIKE '#{params[:outbound_airport_id].to_i}'") unless params[:outbound_airport_id].blank?
      flights = flights.where("departure_date LIKE '#{params[:departure_date]}'") unless params[:departure_date].blank?
      flights
    end
end
