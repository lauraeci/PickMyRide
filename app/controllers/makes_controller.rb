class MakesController < ApplicationController
  respond_to :json

  def index
    @makes = Make.all
    respond_with @makes.to_json
  end

  def show
    @make = Make.find(param[:id])
    respond_with @make.to_json
  end

end