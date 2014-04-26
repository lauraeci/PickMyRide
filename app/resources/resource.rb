module Resource
  class Model
    include HTTParty
    alias_method :has_many, :to_many

    base_uri 'https://api.edmunds.com/api/vehicle/v2/'

    scope :Pickmyride, -> { where(api_key: 'paqqtuhsazun2gm32mg976tr', fmt: 'json') }
    scope :new, -> { where(state: 'new' ) }

    def to_many relation_name
      relation_name = relation_name.to_s
      class_name = relation_name.singularize.camelize

    end
  end
end