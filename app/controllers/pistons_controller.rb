class PistonsController < ApplicationController
  def index
    @engine_makers = Piston.distinct.pluck(:engine_maker)
  end

  def show
    @value = params[:value]
    @records = Piston.where(engine_maker: @value)
    render partial: 'show', locals: { records: @records }


    def show_details
      @record = Piston.find(params[:record_id])
      render partial: 'show_details', locals: { record: @record }
    end
  end


end