class Physician
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  field :id_physician, type: String{50}
  field :name, type: String{50}
  field :surname, type: String{50}
  belongs_to :id_physician
  belongs_to :id_activity_type
end
