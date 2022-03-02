class PatientAaccTest
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic
  auto_increment :idn
  field :answers, type: String
  field :score, type: String
  belongs_to :exploration_type
  belongs_to :test
  belongs_to :aacc
  belongs_to :patient
end
