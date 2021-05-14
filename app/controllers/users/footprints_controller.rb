class Users::FootprintsController < ApplicationController
  def new
    @footprint = Footprint.new
  end

  def create
    @footprint = Footprint.new(footprint_params)
    @footprint.save
    redirect_to users_footprints_path
  end

  def index
    @footprint = Footprint.find(params[:id])
    @footprints = Footprint.all
  end

  private
  def footprint_params
    params.require(:footprint).permit(
      :title,
      :category_id,
      :note,
      :start_time,
      :end_time
    )
  end
end
