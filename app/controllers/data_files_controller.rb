class DataFilesController < ApplicationController
  def new
    @data_file ||= DataFile.new
  end

  def create
    @data_file = DataFile.new(data_file_params)
    if @data_file.save
      redirect_to new_data_files_path, notice: "uploaded file"
    else
      redirect_to new_data_files_path(@data_file), alert: "error: #{@data.errors.full_messages}"
    end
  end

  private

  def data_file_params
    params.require(:data_file).permit(:name, :processor)
  end
end