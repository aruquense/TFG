class Physician
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  field :id_physician, type: Integer
  field :name, type: String
  field :surname, type: String
  belongs_to :id_physician
  belongs_to :id_activity_type
end
