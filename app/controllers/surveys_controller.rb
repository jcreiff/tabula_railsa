class SurveysController < ApplicationController

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to survey_path(@survey)
    end
  end

  def show
    @survey = Survey.find_by_id(params[:id])
  end

  private def survey_params
    params.require(:survey).permit(:name, :chocolate, :rainbows, :puppies, :cold_hard_cash)
  end
end
