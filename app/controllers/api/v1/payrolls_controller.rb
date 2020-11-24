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


  def create
    @payroll = current_user.payrolls.build(payroll_params)


    if @payroll.save
      # binding.pry
      @payrolls << @payroll
      render json: PayrollSerializer.new(@payroll), status: :created
    else
      error_resp = {
        error: @payroll.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def myfunc(total, num)
    return total + num;
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

    @payroll = current_user.payrolls.find(params[:id])

    # @payroll.total = current_user.payRate

    if @payroll.update(payroll_params)
      render json: @payroll
      # render json: PayrollSerializer.new(@payroll)
    else
      render json: @payroll.errors, status: :unprocessable_entity
    end
  end

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



    render json: PayrollSerializer.new(@payrolls)

  end

  private
  def set_payroll
      @payroll = Payroll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payroll_params
      params.require(:payroll).permit(:id, :payPeriod, :total, {:records_attributes => [:id, :payroll_id]})
    end
end
