class ApiController < ApplicationController
  def show
  end

  def sync
    json = VehicleMake.all
    json['makes'].each do |make|
      vehicle_make = VehicleMake.new
      vehicle_make.id = make["id"]
      vehicle_make.niceName = make["niceName"]
      vehicle_make.name = make["name"]
      vehicle_make.save

      make["models"].each do |model|
          vehicle_model = VehicleModel.new
          vehicle_model.make_id = vehicle_make.id
          vehicle_model.id = model["id"]
          vehicle_model.niceName = model["niceName"]
          vehicle_model.save

          model["years"].each do |year|
            vehicle_year = Year.new
            vehicle_year.id = year["id"]
            vehicle_year.model_id = vehicle_model.id
            vehicle_year.year = year["year"]
            vehicle_year.save
          end
      end
    end

    render :json => {:makes => json}
	end
end
