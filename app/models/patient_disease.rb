class PatientDisease
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  belongs_to :disease_code
  belongs_to :id_aacc
end
