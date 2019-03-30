class InformationsController < ApplicationController
  def index
    @information = Information.new
    @informations = Information.all
  end

  def create
    @information = Information.new(params_information)

    if @information.save
      flash[:notice] = "建立成功"
    else
      flash[:alert] = @information.errors.full_messages.to_sentence
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def params_information
    params.require(:information).permit(:name, :training_date, :rest_heart_rate, :training_duration, :rpe)
  end
end
