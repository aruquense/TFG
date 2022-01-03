class PatientAaccPrescription
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  belongs_to :id_aacc
  belongs_to :id_type
  belongs_to :medicalrecord
  belongs_to :id_physician
end
