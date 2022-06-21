class PatientAaccDisease
  include Mongoid::Document
  include Mongoid::Timestamps
  auto_increment :idn
  field :description, type: String
  field :description_en, type: String
  belongs_to :aacc, :class_name => "Aacc", :foreign_key => 'aacc_id', :index => "idn"
  belongs_to :patient, :class_name => "Patient", :foreign_key => 'patient_id', :index => "idn"
  belongs_to :diagnosis_dementium
  belongs_to :diagnosis_ci
  belongs_to :diagnosis_type
end
