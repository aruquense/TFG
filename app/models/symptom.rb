class Symptom
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  field :description, type: String
  field :description_EN, type: String
  belongs_to :id_type
end
