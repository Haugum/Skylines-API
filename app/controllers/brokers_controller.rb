class BrokersController < ApplicationController
  before_action :set_broker, only: [:show, :update, :destroy]

  # GET /brokers
  def index
    @brokers = Broker.all

    render json: @brokers
  end

  # GET /brokers/1
  def show
    render json: @broker
  end

  # POST /brokers
  def create
    @broker = Broker.new(broker_params)

    if @broker.save
      render json: @broker, status: :created, location: @broker
    else
      render json: @broker.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /brokers/1
  def update
    if @broker.update(broker_params)
      render json: @broker
    else
      render json: @broker.errors, status: :unprocessable_entity
    end
  end

  # DELETE /brokers/1
  def destroy
    @broker.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_broker
      @broker = Broker.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def broker_params
      params.require(:broker).permit(:name, :email, :encrypted_password, :profile_picture)
    end
end
