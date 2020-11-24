class Api::V1::PayrollsController < ApplicationController
  before_action :set_payroll, only: [:show, :update, :destroy]

  # GET /payrolls
  # GET /payrolls.json
  def index
    if logged_in?
      @payrolls = current_user.payrolls
      render json: PayrollSerializer.new(@payrolls)
    else
      render json: {
        error: "You must be logged in to see payrolls"
      }
    end


  end

  # GET /payrolls/1
  # GET /payrolls/1.json
  def show
    render json: @payroll
  end

  def create
    # @payroll = Payroll.new(payroll_params)
    @payrolls = current_user.payrolls
    @payroll = current_user.payrolls.build(payroll_params)
    if params[:records] != "" && params[:records] != nil
      @records = params[:records].map do |rid|
                  rid[:id]
                end
      else
      end
      if @records != nil
        @payroll.records = Record.find(@records.uniq)
      end
    if @payroll.save
      # binding.pry
      @payrolls << @payroll
      render json: PayrollSerializer.new(@payroll), status: :created
      # render :show, status: :created, location: @payroll
    else
      # render json: @payroll.errors, status: :unprocessable_entity
      error_resp = {
        error: @payroll.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end


  def update
    if params[:records] != "" && params[:records] != nil
      @records = params[:records].map do |rid|
                  rid[:id]
                end
      else
      end
      if @records != nil
        @payroll.records = Record.find(@records.uniq)
      end
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
    if params[:records] != "" && params[:records] != nil
      @records = params[:records].map do |rid|
                  rid[:id]
                end
      else
      end
      if @records != nil
        @payroll.records = Record.find(@records.uniq)
      end

    @payroll.records.destroy

    @payroll.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payroll
      @payroll = Payroll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payroll_params
      params.require(:payroll).permit(:payPeriod, :total, {:records_attributes => [:id, :payroll_id]})
    end
end
