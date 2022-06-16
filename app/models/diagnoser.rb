class Diagnoser
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  field :codename, type: String
  field :description, type: String
  field :description_EN, type: String
  field :observations, type: String
  field :observations_EN, type: String
  belongs_to :aacc
end
