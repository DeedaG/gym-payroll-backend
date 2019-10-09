class Api::V1::PayrollsController < ApplicationController
  before_action :set_payroll, only: [:show, :update, :destroy]

  # GET /payrolls
  # GET /payrolls.json
  def index
    @payrolls = Payroll.all
    render json: PayrollSerializer.new(@payrolls)
  end

  # GET /payrolls/1
  # GET /payrolls/1.json
  def show
  end

  # POST /payrolls
  # POST /payrolls.json
  def create
    @payroll = Payroll.new(payroll_params)

    if @payroll.save
      render json: PayrollSerializer.new(@payroll)
      # render :show, status: :created, location: @payroll
    else
      render json: @payroll.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /payrolls/1
  # PATCH/PUT /payrolls/1.json
  def update
    if @payroll.update(payroll_params)
      render json: PayrollSerializer.new(@payroll)
      # render :show, status: :ok, location: @payroll
    else
      render json: @payroll.errors, status: :unprocessable_entity
    end
  end

  # DELETE /payrolls/1
  # DELETE /payrolls/1.json
  def destroy
    @payroll.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payroll
      @payroll = Payroll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payroll_params
      params.require(:payroll).permit(:payPeriod, :total)
    end
end
