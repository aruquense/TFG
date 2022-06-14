class PatientAaccAnalytic
  include Mongoid::Document
  include Mongoid::Timestamps
  auto_increment :idn
  field :value, type: String
  field :physycian_eval, type: String
  belongs_to :parameter
  belongs_to :analytics
  belongs_to :patient
  belongs_to :aacc
end
