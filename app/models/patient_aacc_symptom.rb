class PatientAaccSymptom
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  belongs_to :medicalrecord
  belongs_to :id_symptom
end
