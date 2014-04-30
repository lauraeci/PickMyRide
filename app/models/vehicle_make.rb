class VehicleMake < Resource::API
  include Mongoid::Document
  include Mongoid::Timestamps

  field :id, type: Integer
  field :name, type: String
  field :niceName, type: String

  #=> {"id"=>200347864, "name"=>"AM General", "niceName"=>"am-general",

  #https://api.edmunds.com/api/vehicle/v2/makes?fmt=json&api_key=paqqtuhsazun2gm32mg976tr

  @member_url = "https://api.edmunds.com/api/vehicle/v2/makes?fmt=json&api_key=#{self.options[:api_key]}"

  #has_many :vehicle_models

  def self.all
    response = HTTParty.get(@member_url)
    JSON.parse(response.body)
  end
end
