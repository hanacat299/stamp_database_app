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
    @stamp = Stamp.find(params[:id])
  end

  def edit
    @stamp = Stamp.find(params[:id])
  end

  def update
    @stamp = Stamp.find(params[:id])

    if @stamp.update(stamp_params)
      redirect_to stamp_path(@stamp)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @stamp = Stamp.find(params[:id])
    if @stamp.destroy
      redirect_to root
    else
      redirect_to root_path
  end

  private

  def stamp_params
    params.require(:stamp).permit(
      :image, :number, :name, :height, :width, :design_id, :stamp_color_id, :stamp_number, :paper_color_id, :paper_name, :paper_weight, :temperature, :push_time, :push_pressure, :set_time_id, :remark
    )
  end
  

end
