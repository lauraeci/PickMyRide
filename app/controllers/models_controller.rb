class ModelsController < ApplicationController
  respond_to :json

  def index
    @models = Model.where(make_id: params[:make_id])
    respond_with @models.to_json
  end

  def show
    @model = Model.find(params[:id])
    respond_with @model.to_json
  end
end