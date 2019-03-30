class InformationsController < ApplicationController
  def index
    @information = Information.new
    @informations = Information.all
  end

  def create
    @information = Information.new(params_information)


    if @information.save
      @information.get_fatigue(@information)
      flash[:notice] = "成功建立"
      redirect_to root_path
    else
      @informations = Information.all
      flash[:alert] = @information.errors.full_messages.to_sentence
      render :index
    end
      # request.referrer, alert: @information.errors.full_messages.to_sentence
  end

  private

  def params_information
    params.require(:information).permit(:name, :training_date, :rest_heart_rate, :training_duration, :rpe)
  end
end
