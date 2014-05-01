module Vehicle
  class API

    include HTTParty

    base_uri 'https://api.edmunds.com/api/vehicle/v2/'

    def self.options
      { :api_key => 'paqqtuhsazun2gm32mg976tr', :fmt  => 'json' }
    end

  end
end