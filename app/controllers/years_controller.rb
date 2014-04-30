class YearsController < ApplicationController
  respond_to :json

  def index
    @years = Year.where(model_id: params[:model_id])
    respond_with @years.to_json
  end

  def show
    @year = Year.find(params[:id])
    respond_with @year.to_json
  end

end