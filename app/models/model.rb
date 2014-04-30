class Model < Vehicle::API
  include Mongoid::Document
  include Mongoid::Timestamps

  field :id, type: String
  field :name, type: String
  field :niceName, type: String
  field :make_id, type: Integer

  #"models"=>[{"id"=>"AM_General_Hummer", "name"=>"Hummer", "niceName"=>"hummer",


     #has_many :styles
    def self.all
      member_url = "https://api.edmunds.com/api/vehicle/v2/#{self.make}/models?fmt=json&api_key=#{self.options[:api_key]}"
      response = HTTParty.get(member_url)
      JSON.parse(response.body)
    end
end