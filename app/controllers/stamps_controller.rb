class StampsController < ApplicationController
  def index
  end
  def new
    @stamp = Stamp.new
  end

  def create
    @stamp = Stamp.new(stamp_params)
  end

  private

  def stamp_params
    params.require(:stamp).permit(
      :image, :number, :name, :height, :width, :desgin_id, :stamp_color_id, :stamp_number, :paper_color_id, :paper_name, :paper_weight, :temperature, :push_time, :push_pressure, :set_time_id, :remark
    )
  end
  

end
