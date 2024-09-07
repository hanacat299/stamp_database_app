class StampsController < ApplicationController

  def index
    @stamps = Stamp.order(created_at: :desc)
  end
  
  def new
    @stamp = Stamp.new
  end

  def create
    @stamp = Stamp.new(stamp_params)
    if @stamp.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private

  def stamp_params
    params.require(:stamp).permit(
      :image, :number, :name, :height, :width, :design_id, :stamp_color_id, :stamp_number, :paper_color_id, :paper_name, :paper_weight, :temperature, :push_time, :push_pressure, :set_time_id, :remark
    )
  end
  

end
