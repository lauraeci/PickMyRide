class Style < Vehicle::API
  include Mongoid::Document
  include Mongoid::Timestamps
  #https://api.edmunds.com/api/vehicle/v2/styles/3869/equipment?fmt=json&api_key=paqqtuhsazun2gm32mg976tr



  def styles style_id
    member_url = "https://api.edmunds.com/api/vehicle/v2/styles/#{style_id}/equipment?fmt=json&api_key=#{self.object.api_key}"
    response = HTTParty.get(member_url)
    JSON.parse(response.body)
  end
end