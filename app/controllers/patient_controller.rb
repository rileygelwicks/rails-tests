class PatientController < ApplicationController
  def show
    @patient = Patient.find(params[:id])
  end

  def transfer
    @patient = Patient.includes(:facility, :admissions, :diagnoses).find(params[:id])
    @facility = @patient.facility
  end
end
