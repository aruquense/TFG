class PatientAaccAnalytic
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  belongs_to :id_aacc
  belongs_to :medicalrecord
  belongs_to :id_parameter
  belongs_to :id_analytics
end
