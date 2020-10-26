class Api::V1::RecordsController < ApplicationController

  before_action :set_group, only: [:show, :update, :destroy]

  def index
    @records = Record.all
    render json: RecordSerializer.new(@records)
  end

  def show
    record_json = RecordSerializer.new(@record)
    render json: record_json
  end

  def create
    @record = Record.new(record_params)
    @groups = params[:groups].map do |gid|
                gid[:id]
              end
    @record.groups = Group.find(@groups.uniq)
    @payroll = Payroll.find_by(id: params[:payroll_id])

    if @record.save
      @payroll.records << @record
      render json: RecordSerializer.new(@record), status: :created
    else
      render json: @record.errors, status: :unprocessable_entity
    end
  end

  def update
    if @record.update(record_params)
      render json: RecordSerializer.new(@record), status: :ok
      # render :show, status: :ok, location: @record
    else
      render json: @record.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @record.destroy
    render json: RecordSerializer.new(@record)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_params
      params.require(:record).permit(:workdate, :totalHours, :payroll_id, {:groups_attributes => [:id, :record_id]})
    end
end
