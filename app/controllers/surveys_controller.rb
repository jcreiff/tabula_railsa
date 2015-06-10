class SurveysController < ApplicationController

  def new
    @survey = Survey.new
  end


  def create
    @survey = Survey.create!(name: params[:name], chocolate: params[:chocolate],
        rainbows: params[:rainbows], puppies: params[:puppies], cold_hard_cash: params[:cold_hard_cash])
    render :show
  end

  def show

  end

  private def survey_params
    params.require(:home).permit(:name, :chocolate, :rainbows, :puppies, :cold_hard_cash)
  end
end
