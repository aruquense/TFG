class PatientAaccSymptom
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic
  auto_increment :idn
  field :idn, type: String
  belongs_to :aacc
end
