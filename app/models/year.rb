# "years"=>[{"id"=>3407, "year"=>1998}, {"id"=>1140, "year"=>1999}, {"id"=>305, "year"=>2000}]}]}

class Year
  include Mongoid::Document
  include Mongoid::Timestamps

  field :id, type: Integer
  field :name, type: Integer
  field :year, type: Integer
  field :model_id, type: String
end