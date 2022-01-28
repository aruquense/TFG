class PatientAaccPrescription
  include Mongoid::Document
  include Mongoid::Timestamps
  auto_increment :idn
  field :id_physician, type: String
  field :value, type: String
  belongs_to :prescription_drugs_type
  belongs_to :aacc
  belongs_to :patient
end
