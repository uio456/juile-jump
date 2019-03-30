class InformationsController < ApplicationController
  def index
    @information = Information.new
  end

  def create
    @information = Information.new(params_information)

    if @information.save
      flash[:notice] = "建立成功"
    else
      flash[:alert] = @information.errors.fall_messages.to_sentence
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def params_information
    params.require(:information).permit(:name)
  end
end
