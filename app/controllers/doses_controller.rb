class DosesController < ApplicationController
  before_action :set_cocktail, only: [:show]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.save
    if @dose.save
      @cocktail.dose = @dose
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end


  private
  def set_dose
    @dose = dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :cocktail, :ingredient)
  end
end
