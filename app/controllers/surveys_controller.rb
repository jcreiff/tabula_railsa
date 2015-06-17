class SurveysController < ApplicationController

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if session[:disable_save] != true
      if @survey.save
        session[:disable_save] = true
        redirect_to survey_path(@survey)
      else
        render :new
      end
    else
      redirect_to root_path, notice: "Can't take survey twice!"
    end
  end

  def show
    @survey = Survey.find_by_id(params[:id])
  end

  private def survey_params
    params.require(:survey).permit(:name, :chocolate, :rainbows, :puppies, :cold_hard_cash)
  end
end
