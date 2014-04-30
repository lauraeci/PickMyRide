module Vehicle
  class API

    include HTTParty

    #alias_method :has_many, :to_many

    base_uri 'https://api.edmunds.com/api/vehicle/v2/'

    def self.options
      { :api_key => 'paqqtuhsazun2gm32mg976tr', :fmt  => 'json' }
    end

    #def to_many relation_name
    #  relation_name = relation_name.to_s
    #  class_name = relation_name.singularize.camelize
    #
    #end
  end
end