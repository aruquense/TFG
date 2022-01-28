class PatientAaccAnalytic
  include Mongoid::Document
  include Mongoid::Timestamps
  auto_increment :idn
  belongs_to :id_aacc
  belongs_to :medicalrecord
  belongs_to :id_parameter
  belongs_to :id_analytics
end
