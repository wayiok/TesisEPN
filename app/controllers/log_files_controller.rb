class LogFilesController < ApplicationController
  def create
    begin
      LogFile.create!(log_params)
    rescue ActiveRecord::RecordInvalid
      flash[:notice] = 'archivo debe tener formato .log'
    end

    redirect_back(fallback_location: root_path)
  end

  private

  def log_params
    params.require(:log_file).permit(:file)
  end
end
