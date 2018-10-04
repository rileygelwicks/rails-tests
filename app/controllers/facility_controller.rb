class FacilityController < ApplicationController
  def index
    @facilities = Facility.order(:name)
  end

  def show
    @facility = Facility.includes(:patients).find(params[:id])
  end
end
