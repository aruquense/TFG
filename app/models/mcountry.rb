class Mcountry
  include Mongoid::Document
  include Mongoid::Timestamps
  field :countrycode, type: Integer
  field :countrydesc, type: String
end
