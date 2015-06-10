class HomeController < ApplicationController

  def form
    if request.post?
      @survey = Survey.create!(name: params[:name], chocolate: params[:chocolate],
          rainbows: params[:rainbows], puppies: params[:puppies], cold_hard_cash: params[:cold_hard_cash])
    end
  end


  private def survey_params
    params.require(:home).permit(:name, :chocolate, :rainbows, :puppies, :cold_hard_cash)
  end
end
